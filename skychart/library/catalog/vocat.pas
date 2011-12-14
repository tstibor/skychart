unit vocat;

{$mode objfpc}{$H+}

interface

uses  skylibcat, gcatunit, XMLRead, DOM, math, XMLConf,
  Classes, SysUtils; 

procedure SetVOCatpath(path:string);
Procedure OpenVOCat(ar1,ar2,de1,de2: double ; var ok : boolean);
Procedure OpenVOCatwin(var ok : boolean);
Procedure ReadVOCat(var lin : GCatrec; var ok : boolean);
Procedure NextVOCat( var ok : boolean);
procedure CloseVOCat ;
function GetVOMagmax: double;

type TFieldData = class(Tobject)
     name, ucd, datatype, units, description : string;
     end;

type Tstarcache = record
         star: Tstar;
         ra,de: double;
         lma: string;
end;
type Tnebcache = record
         neb: Tneb;
         ra,de: double;
         lma,ldim: string;
end;
type TcacheOption = record
     option: TCatoption;
     vofiledate: longint;
end;

const CacheInc=1000;
      MaxCache=10;

var
   VOobject, VOname : string;
   VOCatpath : string ='';
   deffile,catfile: string;
   Defsize: integer;
   Defmag: double;
   active,VODocOK: boolean;
   drawtype: integer;
   drawcolor,forcecolor: integer;
   flabels: Tlabellst;
   unit_pmra, unit_pmdec, unit_size: double;
   log_pmra, log_pmdec, log_size, cosdec_pmra: boolean;
   field_pmra, field_pmdec, field_size : integer;
   catname:string;
   VOcatlist : TStringList;
   VOFields: TStringList;
   Ncat, CurCat, catversion: integer;
   emptyrec : gcatrec;
   VODoc: TXMLDocument;
   VoNode: TDOMNode;
   onCache,CacheAvailable: boolean;
   CurNebCache, CurStarCache, CurCacheRec: integer;
   NebCacheIndex, StarCacheIndex: array[0..maxcache-1] of string;
   StarOptionCache, NebOptionCache: array[0..maxcache-1] of TcacheOption;
   NebCache: array[0..maxcache-1] of array of Tnebcache;
   StarCache: array[0..maxcache-1] of array of Tstarcache;

implementation

var VOopen: boolean=false;

procedure SetVOCatpath(path:string);
begin
VOCatpath:=noslash(path);
end;

function numericunit(units: string; var u:double; var log:boolean): string;   //  numeric prefix
var i,j,pe,s,ni: integer;
    e,k,c,n:string;
    ex: double;
begin
log:=false;
k:=trim(units);
i:=length(k);
// log scale
if (copy(k,1,1)='[')and(copy(k,i,1)=']') then begin
  log:=true;
  k:=copy(k,2,i-2);
end;
// sign
s:=1;
c:=copy(k,1,1);
if c='+' then Delete(k,1,1);
if c='-' then begin
   Delete(k,1,1);
   s:=-1;
end;
// exponent position
pe:=pos('10-',k);
if pe=0 then pe:=pos('10+',k);
j:=pe;
if j=0 then j:=length(k);
// numeric factor
n:='';
ni:=0;
for i:=1 to j-1 do begin
   c:=copy(k,i,1);
   if ((c>='0')and(c<='9'))or(c='.') then begin
      n:=n+c;
      inc(ni);
   end
   else break;
end;
if ni>0 then begin
  u:=s*StrToFloatDef(n,0);
  delete(k,1,ni);
end
else u:=1;
// exponent
if pe>0 then begin
   n:='';
   ni:=0;
   for i:=4 to length(k) do begin
      if ((c>='0')and(c<='9')) then begin
         n:=n+c;
         inc(ni);
      end
      else break;
   end;
   e:=n;
   delete(k,1,ni);
   ex:=StrToFloatDef(e,-99999);
   if ex<>-99999 then u:=u*power(10,(ex))
      else u:=0;
end;
result:=k;
end;

function angleunits(units: string; var log: Boolean): double;  // result in radian
var k:string;
    u: double;
begin
  k:=trim(units);
  k:=numericunit(k,u,log);
  if k='mas' then u:=u/3600/1000
  else if k='arcsec' then u:=u/3600
  else if k='arcmin' then u:=u/60
  else if k='rad' then u:=u*rad2deg
  else if k<>'deg' then u:=0;
  result:=deg2rad*u;
end;

function timeunits(units: string; var log: Boolean): double;  // result in seconds
var k:string;
    u: double;
begin
k:=trim(units);
k:=numericunit(k,u,log);
if (k='a') or (k='yr') then u:=u*365.25*86400
else if k='d' then u:=u*86400
else if k='h' then u:=u*3600
else if k='min' then u:=u*60
else if k<>'s' then u:=0;
result:=u;
end;

function pmunits(units: string; var log,cosdec: Boolean): double;  // result in radian/year
var e,k,v:string;
    u,y,uu: double;
    i: integer;
    ok: boolean;
begin
  uu:=1; cosdec:=false;
  i:=pos('/',units);
  k:=copy(units,1,i-1);
  v:=copy(units,i+1,99);
  if k='s' then begin     // PPM give pmRa in second of time
     k:='arcsec';
     uu:=15;
     cosdec:=true;
  end;
  u:=angleunits(k,log)*uu;
  y:=timeunits(v,ok)/(365.25*86400);
  if (y=0) then u:=0
     else u:=u/y;
  result:=u;
end;

Procedure InitRec;
var n : integer;
    ucd: string;
begin
  emptyrec.options.rectype:=catversion;
  emptyrec.options.Equinox:=2000;
  emptyrec.options.EquinoxJD:=jd2000;
  JDCatalog:=emptyrec.options.EquinoxJD;
  emptyrec.options.Epoch:=2000;
  emptyrec.options.MagMax:=20;
  emptyrec.options.Size:=Defsize;
  emptyrec.options.Units:=3600;
  emptyrec.options.ObjType:=1;
  emptyrec.options.LogSize:=0;
  emptyrec.options.UsePrefix:=0;
  emptyrec.options.UseColor:=forcecolor;
  for n:=1 to 10 do emptyrec.options.altname[n]:=false;
  emptyrec.options.flabel:=flabels;
  emptyrec.options.flabel[lOffset+vsComment]:='File';
  emptyrec.options.ShortName:='VO';
  emptyrec.options.LongName:=VOname;
  case emptyrec.options.rectype of
  rtstar : begin
           emptyrec.star.magv:=99;
           emptyrec.star.valid[vsId]:=true;
           emptyrec.star.valid[vsComment]:=true;
           if field_pmra>=0 then emptyrec.star.valid[vsPmra]:=true;
           if field_pmdec>=0 then emptyrec.star.valid[vsPmdec]:=true;
           emptyrec.options.flabel[lOffset+vsMagv]:='No mag';
      end;
  rtneb : begin
          emptyrec.neb.valid[vnId]:=true;
          emptyrec.neb.valid[vnComment]:=true;
          emptyrec.neb.valid[vnNebtype]:=true;
          emptyrec.neb.valid[vnMag]:=true;
          emptyrec.neb.nebtype:=drawtype;
          emptyrec.neb.mag:=-99;
          emptyrec.options.flabel[lOffset+vnMag]:='No mag';
          emptyrec.options.flabel[lOffset+vnDim1]:='No size';
          emptyrec.neb.color:=drawcolor;
      end;
  end;
end;

Procedure Getkeyword(s: string; var k,v:string);
var p: integer;
begin
p:=pos('=',s);
if p=0 then
  v:=s
else begin
  k:=trim(copy(s,1,p-1));
  v:=trim(copy(s,p+1,999));
end;
end;

function GetCache:boolean;
var i: integer;
begin
result:=false;
case catversion of
rtStar: begin
          CurStarCache:=-1;
          for i:=0 to MaxCache-1 do begin
            if StarCacheIndex[i]=catname then begin
              if StarOptionCache[i].vofiledate=FileAge(catfile)then begin
               CurStarCache:=i;
               result:=true;
               break;
              end else begin
               result:=false;
               break;
              end;
            end;
          end;
        end;
rtNeb : begin
          CurNebCache:=-1;
          for i:=0 to MaxCache-1 do begin
            if NebCacheIndex[i]=catname then begin
              if NebOptionCache[i].vofiledate=FileAge(catfile)then begin
               CurNebCache:=i;
               result:=true;
               break;
              end else begin
               result:=false;
               break;
              end;
            end;
          end;
        end;
end;
end;

function NewCache:boolean;
var i,n: integer;
begin
result:=false;
case catversion of
rtStar: begin
          n:=-1;
          for i:=0 to MaxCache-1 do begin
            if StarCacheIndex[i]='' then begin
              n:=i;
              break;
            end;
          end;
          if n>=0 then begin
            StarCacheIndex[n]:=catname;
            SetLength(StarCache[n],CacheInc);
            CurStarCache:=n;
            result:=true;
          end;
        end;
rtNeb : begin
          n:=-1;
          for i:=0 to MaxCache-1 do begin
            if NebCacheIndex[i]='' then begin
              n:=i;
              break;
            end;
          end;
          if n>=0 then begin
            NebCacheIndex[n]:=catname;
            SetLength(NebCache[n],CacheInc);
            CurNebCache:=n;
            result:=true;
          end;
        end;
end;
end;

Procedure DeleteCache;
var i: integer;
begin
case catversion of
rtStar: begin
          for i:=0 to MaxCache-1 do begin
            if StarCacheIndex[i]=catname then begin
               StarCacheIndex[i]:='';
               SetLength(StarCache[i],0);
               break;
            end;
          end;
        end;
rtNeb : begin
          for i:=0 to MaxCache-1 do begin
            if NebCacheIndex[i]=catname then begin
              NebCacheIndex[i]:='';
              SetLength(NebCache[i],0);
              break;
            end;
          end;
        end;
end;
end;

Function ReadVOHeader: boolean;
var buf,e,k,v:string;
    u: double;
    i,j: integer;
    fieldnode: TDOMNode;
    fielddata: TFieldData;
    config: TXMLConfig;
    l,c: boolean;
begin
result:=false;
VODocOK:=false;
fillchar(EmptyRec,sizeof(GcatRec),0);
unit_pmra:=0;unit_pmdec:=0;unit_size:=0;
log_pmra:=false;log_pmdec:=false;log_size:=false;
field_pmra:=-1;field_pmdec:=-1;field_size:=-1;
catname:=ExtractFileName(catfile);
config:=TXMLConfig.Create(nil);
try
config.Filename:=deffile;
VOName:=config.GetValue('VOcat/catalog/name','');
VOobject:=config.GetValue('VOcat/catalog/objtype',VOobject);
active:=config.GetValue('VOcat/plot/active',false);
drawtype:=config.GetValue('VOcat/plot/drawtype',14);
drawcolor:=config.GetValue('VOcat/plot/drawcolor',$808080);
forcecolor:=config.GetValue('VOcat/plot/forcecolor',0);
DefSize:=config.GetValue('VOcat/default/defsize',1);
Defmag:=config.GetValue('VOcat/default/defmag',10);
finally
config.free;
end;
if VOobject='star' then catversion:=rtStar;
if VOobject='dso'  then catversion:=rtNeb;
if active and FileExists(catfile) then begin
try
onCache:=GetCache;
CurCacheRec:=-1;
if onCache then begin
  case catversion of
     rtStar: emptyrec.options:=StarOptionCache[CurStarCache].option;
     rtNeb : emptyrec.options:=NebOptionCache[CurNebCache].option;
  end;
  result:=true;
end else begin
  CacheAvailable:=NewCache;
  ReadXMLFile( VODoc, catfile);
  VODocOK:=true;
  VoNode:=VODoc.DocumentElement.FindNode('RESOURCE');
  VoNode:=VoNode.FindNode('TABLE');
  VoNode:=VoNode.FirstChild;
  for i:=0 to VOFields.Count-1 do VOFields.Objects[i].Free;
  VOFields.Clear;
  while Assigned(VoNode) do begin
    buf:=VoNode.NodeName;
    if buf='FIELD' then begin
      fielddata:=TFieldData.Create;
      fieldnode:=VoNode.FindNode('DESCRIPTION');
      if fieldnode<>nil then begin
         fielddata.description:=fieldnode.TextContent;
      end;
      fieldnode:=VoNode.Attributes.GetNamedItem('name');
      if fieldnode<>nil then k:=fieldnode.NodeValue;
      fielddata.name:=k;
      fieldnode:=VoNode.Attributes.GetNamedItem('ucd');
      if fieldnode<>nil then fielddata.ucd:=fieldnode.NodeValue;
      fieldnode:=VoNode.Attributes.GetNamedItem('datatype');
      if fieldnode<>nil then fielddata.datatype:=fieldnode.NodeValue;
      fieldnode:=VoNode.Attributes.GetNamedItem('unit');
      if fieldnode<>nil then fielddata.units:=fieldnode.NodeValue;
      j:=VOFields.AddObject(k,fielddata);
      if pos('pos.pm',fielddata.ucd)=1 then begin
        if (pos('pos.eq.ra',fielddata.ucd)>0) then begin
            u:=pmunits(fielddata.units,l,c);
            if (u>0) then begin
              field_pmra:=j;
              unit_pmra:=u;
              log_pmra:=l;
              cosdec_pmra:=c;
              flabels[lOffset+vsPmra]:=fielddata.name;
            end;
         end
         else if (pos('pos.eq.dec',fielddata.ucd)>0) then begin
            u:=pmunits(fielddata.units,l,c);
            if (u>0) then begin
               field_pmdec:=j;
               unit_pmdec:=u;
               log_pmdec:=l;
               flabels[lOffset+vsPmdec]:=fielddata.name;
            end;
         end;
      end;
      if (pos('phys.angSize',fielddata.ucd)=1)and(field_size=-1) then begin  //first dimmension
        u:=angleunits(fielddata.units,l);
        if (u>0) then begin
           field_size:=j;
           unit_size:=u/secarc;
           log_size:=l;
        end;
      end;
    end;
    if buf='DATA' then break;
    VoNode:=VoNode.NextSibling;
  end;
  VoNode:=VoNode.FirstChild;   // TABLEDATA
  VoNode:=VoNode.FirstChild;   // first TR
  if Assigned(VoNode) then begin
    buf:=VoNode.NodeName;
    if buf='TR' then begin
      result:=true;
      InitRec;
      if CacheAvailable then begin
        case catversion of
           rtStar: begin
                    StarOptionCache[CurStarCache].option:=emptyrec.options;
                    StarOptionCache[CurStarCache].vofiledate:=FileAge(catfile);
                   end;
           rtNeb:  begin
                    NebOptionCache[CurNebCache].option:=emptyrec.options;
                    NebOptionCache[CurNebCache].vofiledate:=FileAge(catfile);
                   end;
           else DeleteCache;
        end;
      end;
    end;
  end;
end;
except
  result:=false;
  config:=TXMLConfig.Create(nil);
  config.Filename:=deffile;
  config.SetValue('VOcat/plot/active',false);
  config.Flush;
  config.free;
end;
end
else begin
  DeleteCache;
end;
end;

Procedure OpenVOCat(ar1,ar2,de1,de2: double ; var ok : boolean);
begin
OpenVOCatwin(ok);
end;

Procedure OpenVOCatwin(var ok : boolean);
var fs: TSearchRec;
    i: integer;
begin
ok:=false;
if VOopen then CloseVOCat;
VOcatlist:=TStringList.Create;
VOFields:=TStringList.Create;
Ncat:=0;
VODocOK:=false;
i:=findfirst(slash(VOCatpath)+'vo_'+VOobject+'_*.xml',0,fs);
while i=0 do begin
  VOcatlist.Add(fs.Name);
  inc(Ncat);
  i:=findnext(fs);
end;
findclose(fs);
CurCat:=-1;
VOopen:=true;
NextVOCat(ok);
end;

Procedure ReadVOCat(var lin : GCatrec; var ok : boolean);
var cell: TDOMNode;
    buf,recno: string;
    i: integer;
begin
ok:=false;
lin:=emptyrec;
if OnCache then begin
// read form cache
inc(CurCacheRec);
case catversion of
  rtStar: if CurCacheRec<length(StarCache[CurStarCache]) then begin
             lin.star:=StarCache[CurStarCache,CurCacheRec].star;
             lin.ra:=StarCache[CurStarCache,CurCacheRec].ra;
             lin.dec:=StarCache[CurStarCache,CurCacheRec].de;
             if StarCache[CurStarCache,CurCacheRec].lma<>'' then
                lin.options.flabel[lOffset+vsMagv]:=StarCache[CurStarCache,CurCacheRec].lma;
             ok:=true;
          end;
  rtNeb:  if CurCacheRec<length(NebCache[CurNebCache]) then begin
             lin.neb:=NebCache[CurNebCache,CurCacheRec].neb;
             lin.ra:=NebCache[CurNebCache,CurCacheRec].ra;
             lin.dec:=NebCache[CurNebCache,CurCacheRec].de;
             if NebCache[CurNebCache,CurCacheRec].lma<>'' then
                lin.options.flabel[lOffset+vnMag]:=NebCache[CurNebCache,CurCacheRec].lma;
             if NebCache[CurNebCache,CurCacheRec].ldim<>'' then
                lin.options.flabel[lOffset+vnDim1]:=NebCache[CurNebCache,CurCacheRec].ldim;
             ok:=true;
          end;
  end;
end else begin
if Assigned(VoNode) then begin
  cell:=VoNode.FirstChild;
  i:=0;
  recno:='*';
  case catversion of
  rtStar: begin
          lin.star.comment:=catname+tab;
          end;
  rtNeb:  begin
          lin.neb.comment:=catname+tab;
          end;
  end;
  while Assigned(cell) do begin
    buf:=cell.TextContent;
    // always ask vizier to add j2000 coordinates.   TODO: process general case coordinates
    if VOFields[i]='_RAJ2000' then lin.ra:=deg2rad*StrToFloatDef(buf,0);
    if VOFields[i]='_DEJ2000' then lin.dec:=deg2rad*StrToFloatDef(buf,0);
    if (buf<>'')and(pos('meta.record',TFieldData(VOFields.Objects[i]).ucd)=1) then recno:=buf;
    case catversion of
    rtStar: begin
            lin.star.comment:=lin.star.comment+VOFields[i]+':'+buf+' '+TFieldData(VOFields.Objects[i]).units+tab;
            if (buf<>'')and(pos('meta.id',TFieldData(VOFields.Objects[i]).ucd)=1) then begin
              if (lin.star.id='')or(pos('meta.main',TFieldData(VOFields.Objects[i]).ucd)>0) then
                  if  pos('meta.id.part',TFieldData(VOFields.Objects[i]).ucd)>0 then begin
                      if lin.star.id='' then lin.star.id:=lin.star.id+buf
                                        else lin.star.id:=lin.star.id+'-'+buf;
                  end else lin.star.id:=buf;
            end;
            if (buf<>'')and(pos('phot.mag',TFieldData(VOFields.Objects[i]).ucd)=1) then begin
              lin.star.valid[vsMagv]:=true;
              if (lin.star.magv=99)or(pos('em.opt.V',TFieldData(VOFields.Objects[i]).ucd)>0) then begin
                 lin.options.flabel[lOffset+vsMagv]:=VOFields[i];
                 lin.star.magv:=StrToFloatDef(buf,99);
              end;
            end;
            if i=field_pmra then lin.star.pmra:=StrToFloatDef(buf,0)*unit_pmra;
            if i=field_pmdec then lin.star.pmdec:=StrToFloatDef(buf,0)*unit_pmdec;
            end;
    rtNeb:  begin
            lin.neb.comment:=lin.neb.comment+VOFields[i]+':'+buf+' '+TFieldData(VOFields.Objects[i]).units+tab;
            if (buf<>'')and(pos('meta.id',TFieldData(VOFields.Objects[i]).ucd)>0) then begin
              if (lin.neb.id='')or(pos('meta.main',TFieldData(VOFields.Objects[i]).ucd)>0) then
                  if  pos('meta.id.part',TFieldData(VOFields.Objects[i]).ucd)>0 then begin
                      if lin.neb.id='' then lin.neb.id:=lin.neb.id+buf
                                        else lin.neb.id:=lin.neb.id+'-'+buf;
                  end else lin.neb.id:=buf;
            end;
            if (buf<>'')and(pos('phot.mag',TFieldData(VOFields.Objects[i]).ucd)=1)and(pos('phot.mag.',TFieldData(VOFields.Objects[i]).ucd)=0)and(lin.neb.mag=-99) then begin
               lin.options.flabel[lOffset+vnMag]:=VOFields[i];
               lin.neb.mag:=StrToFloatDef(buf,Defmag);;
               lin.neb.valid[vnMag]:=true;
            end;
            if (buf<>'')and(i=field_size) then begin
               lin.neb.dim1:=StrToFloatDef(buf,Defsize);
               if log_size and (lin.neb.dim1<>Defsize) then lin.neb.dim1:=power(10,lin.neb.dim1);
               lin.neb.dim1:=unit_size*lin.neb.dim1;
               lin.neb.valid[vnDim1]:=true;
               lin.options.flabel[lOffset+vnDim1]:=VOFields[i];
            end;
            if (buf<>'')and(pos('src.class',TFieldData(VOFields.Objects[i]).ucd)>0)and(pos('src.class.',TFieldData(VOFields.Objects[i]).ucd)=0) then begin
               if trim(buf)='Gx'  then lin.neb.nebtype:=1
               else if trim(buf)='OC'  then lin.neb.nebtype:=2
               else if trim(buf)='Gb'  then lin.neb.nebtype:=3
               else if trim(buf)='Pl'  then lin.neb.nebtype:=4
               else if trim(buf)='Nb'  then lin.neb.nebtype:=5
               else if trim(buf)='C+N'  then lin.neb.nebtype:=6
               else if trim(buf)='*'  then lin.neb.nebtype:=7
               else if trim(buf)='D*'  then lin.neb.nebtype:=8
               else if trim(buf)='***'  then lin.neb.nebtype:=9
               else if trim(buf)='Ast'  then lin.neb.nebtype:=10
               else if trim(buf)='Kt'  then lin.neb.nebtype:=11
               else if trim(buf)='?'  then lin.neb.nebtype:=lin.options.ObjType
               else if trim(buf)='-'  then lin.neb.nebtype:=lin.options.ObjType
               else if trim(buf)='PD'  then lin.neb.nebtype:=lin.options.ObjType;
            end;
            end;
    end;
    cell:=cell.NextSibling;
    inc(i);
  end;
  case catversion of
  rtStar: begin
          if lin.star.id='' then lin.star.id:=recno;
          if cosdec_pmra then lin.star.pmra:=lin.star.pmra*cos(lin.dec);
          end;
  rtNeb:  begin
          if lin.neb.id='' then lin.neb.id:=recno;
          if lin.neb.mag=-99 then lin.neb.mag:=Defmag;
          end;
  end;
   // fill cache
  if CacheAvailable then begin
    case catversion of
    rtStar: begin
            inc(CurCacheRec);
            if CurCacheRec>=Length(StarCache[CurStarCache]) then begin
              SetLength(StarCache[CurStarCache],CurCacheRec+CacheInc);
            end;
            StarCache[CurStarCache,CurCacheRec].star:=lin.star;
            StarCache[CurStarCache,CurCacheRec].ra:=lin.ra;
            StarCache[CurStarCache,CurCacheRec].de:=lin.dec;
            if lin.options.flabel[lOffset+vsMagv]=emptyrec.options.flabel[lOffset+vsMagv] then
               StarCache[CurStarCache,CurCacheRec].lma:=''
            else
               StarCache[CurStarCache,CurCacheRec].lma:=lin.options.flabel[lOffset+vsMagv];
            end;
    rtNeb:  begin
            inc(CurCacheRec);
            if CurCacheRec>=Length(NebCache[CurNebCache]) then begin
              SetLength(NebCache[CurNebCache],CurCacheRec+CacheInc);
            end;
            NebCache[CurNebCache,CurCacheRec].neb:=lin.neb;
            NebCache[CurNebCache,CurCacheRec].ra:=lin.ra;
            NebCache[CurNebCache,CurCacheRec].de:=lin.dec;
            if lin.options.flabel[lOffset+vnMag]=emptyrec.options.flabel[lOffset+vnMag] then
               NebCache[CurNebCache,CurCacheRec].lma:=''
            else
               NebCache[CurNebCache,CurCacheRec].lma:=lin.options.flabel[lOffset+vnMag];
            if lin.options.flabel[lOffset+vnDim1]=emptyrec.options.flabel[lOffset+vnDim1] then
               NebCache[CurNebCache,CurCacheRec].ldim:=''
            else
               NebCache[CurNebCache,CurCacheRec].ldim:=lin.options.flabel[lOffset+vnDim1];
            end;
    end;
  end;
  VoNode:=VoNode.NextSibling;
  ok:=true;
end;
end;
if not ok then begin
   NextVOCat(ok);
   if ok then ReadVOCat(lin,ok);
end;
end;

Procedure NextVOCat( var ok : boolean);
begin
ok:=false;
inc(CurCat);
if CurCat<Ncat then begin
   catfile:=slash(VOCatpath)+VOcatlist[CurCat];
   deffile:=ChangeFileExt(catfile,'.config');
   if (CurCat>0) and VODocOK then VODoc.Free;
   ok:=ReadVOHeader;
   if (not active)or(not ok) then NextVOCat(ok);
end;
end;

procedure CloseVOCat ;
var i: integer;
begin
VOcatlist.Free;
if VODocOK then VODoc.Free;
for i:=0 to VOFields.Count-1 do VOFields.Objects[i].Free;
VOFields.Free;
VOopen:=false;
Ncat:=0;
CurCat:=0;
end;

function GetVOMagmax: double;
var fs: TSearchRec;
    i: integer;
    ok,active: boolean;
    rec:GCatrec;
    config: TXMLConfig;
    magmax,defmag:double;
begin
result:=0;
ok:=false;
VOcatlist:=TStringList.Create;
VOFields:=TStringList.Create;
Ncat:=0;
VODocOK:=false;
i:=findfirst(slash(VOCatpath)+'vo_star_*.xml',0,fs);
while i=0 do begin
  VOcatlist.Add(fs.Name);
  inc(Ncat);
  i:=findnext(fs);
end;
findclose(fs);
CurCat:=0;
ok:=false;
while CurCat<Ncat do begin
   catfile:=slash(VOCatpath)+VOcatlist[CurCat];
   deffile:=ChangeFileExt(catfile,'.config');
   if (CurCat>0) and VODocOK then VODoc.Free;
   config:=TXMLConfig.Create(nil);
   config.Filename:=deffile;
   active:=config.GetValue('VOcat/plot/active',false);
   magmax:=config.GetValue('VOcat/plot/maxmag',-99);
   defmag:=config.GetValue('VOcat/default/defmag',10);
   config.free;
   if active then begin
     if magmax=-99 then begin
        if (CurCat>0) and VODocOK then VODoc.Free;
        ok:=ReadVOHeader;
        while ok do begin
          ReadVOCat(rec,ok);
          if rec.star.valid[vsMagv] then  magmax:=max(magmax,rec.star.magv);
        end;
        if magmax<defmag then magmax:=defmag;
        config:=TXMLConfig.Create(nil);
        config.Filename:=deffile;
        config.SetValue('VOcat/plot/maxmag',trunc(magmax));
        config.Flush;
        config.Free;
     end;
     result:=max(result,magmax);
   end;
   inc(CurCat);
end;
CloseVOCat;
result:=max(result,6);
result:=min(result,20);
end;

end.

