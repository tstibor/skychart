unit pu_config;

interface

uses Math, u_constant,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Grids, ExtCtrls, enhedits, ActnList,
  FoldrDlg;

type
  Tf_config = class(TForm)
    TreeView1: TTreeView;
    PageControl1: TPageControl;
    p_catgen: TTabSheet;
    Label1: TLabel;
    p_cdcstars: TTabSheet;
    p_cdcneb: TTabSheet;
    p_external: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    p_planets: TTabSheet;
    p_comets: TTabSheet;
    p_asteroids: TTabSheet;
    p_color: TTabSheet;
    p_lines: TTabSheet;
    p_labels: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    p_catalog: TTabSheet;
    Label11: TLabel;
    p_solsys: TTabSheet;
    Label12: TLabel;
    p_cdc: TTabSheet;
    Label13: TLabel;
    p_display: TTabSheet;
    Label14: TLabel;
    Label65: TLabel;
    BSCbox: TCheckBox;
    Fbsc1: TLongEdit;
    Fbsc2: TLongEdit;
    bsc3: TEdit;
    BitBtn9: TBitBtn;
    Label66: TLabel;
    SKYbox: TCheckBox;
    Fsky1: TLongEdit;
    Fsky2: TLongEdit;
    sky3: TEdit;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    tyc3: TEdit;
    Ftyc2: TLongEdit;
    Ftyc1: TLongEdit;
    TYCbox: TCheckBox;
    Label67: TLabel;
    Label87: TLabel;
    TY2Box: TCheckBox;
    TICbox: TCheckBox;
    Ftic1: TLongEdit;
    Fty21: TLongEdit;
    Fty22: TLongEdit;
    Ftic2: TLongEdit;
    ty23: TEdit;
    tic3: TEdit;
    BitBtn13: TBitBtn;
    BitBtn12: TBitBtn;
    GSCFBox: TCheckBox;
    GSCCbox: TCheckBox;
    GSCbox: TCheckBox;
    USNbox: TCheckBox;
    MCTBox: TCheckBox;
    dsbasebox: TCheckBox;
    dstycBox: TCheckBox;
    dsgscBox: TCheckBox;
    USNBright: TCheckBox;
    fgscf1: TLongEdit;
    fgscc1: TLongEdit;
    fgsc1: TLongEdit;
    fusn1: TLongEdit;
    fmct1: TLongEdit;
    dsbase1: TLongEdit;
    dstyc1: TLongEdit;
    dsgsc1: TLongEdit;
    dsgsc2: TLongEdit;
    dstyc2: TLongEdit;
    dsbase2: TLongEdit;
    fmct2: TLongEdit;
    fusn2: TLongEdit;
    fgsc2: TLongEdit;
    fgscc2: TLongEdit;
    fgscf2: TLongEdit;
    gscf3: TEdit;
    gscc3: TEdit;
    gsc3: TEdit;
    usn3: TEdit;
    mct3: TEdit;
    dsbase3: TEdit;
    dstyc3: TEdit;
    dsgsc3: TEdit;
    BitBtn22: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn32: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn16: TBitBtn;
    Label16: TLabel;
    Label28: TLabel;
    Label17: TLabel;
    Label27: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    wds3: TEdit;
    gcv3: TEdit;
    Fgcv2: TLongEdit;
    Fwds2: TLongEdit;
    Fwds1: TLongEdit;
    Fgcv1: TLongEdit;
    GCVBox: TCheckBox;
    IRVar: TCheckBox;
    WDSbox: TCheckBox;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label69: TLabel;
    NGCbox: TCheckBox;
    RC3box: TCheckBox;
    OCLbox: TCheckBox;
    GCMbox: TCheckBox;
    GPNbox: TCheckBox;
    LBNbox: TCheckBox;
    ngc3: TEdit;
    rc33: TEdit;
    lbn3: TEdit;
    ocl3: TEdit;
    gcm3: TEdit;
    gpn3: TEdit;
    PGCBox: TCheckBox;
    pgc3: TEdit;
    SACbox: TCheckBox;
    sac3: TEdit;
    fngc1: TLongEdit;
    fngc2: TLongEdit;
    fsac1: TLongEdit;
    fsac2: TLongEdit;
    flbn1: TLongEdit;
    flbn2: TLongEdit;
    frc31: TLongEdit;
    frc32: TLongEdit;
    fpgc1: TLongEdit;
    fpgc2: TLongEdit;
    focl1: TLongEdit;
    focl2: TLongEdit;
    fgcm1: TLongEdit;
    fgcm2: TLongEdit;
    fgpn1: TLongEdit;
    fgpn2: TLongEdit;
    BitBtn23: TBitBtn;
    BitBtn24: TBitBtn;
    BitBtn25: TBitBtn;
    BitBtn26: TBitBtn;
    BitBtn27: TBitBtn;
    BitBtn28: TBitBtn;
    BitBtn29: TBitBtn;
    BitBtn30: TBitBtn;
    Label52: TLabel;
    Label71: TLabel;
    StringGrid1: TStringGrid;
    Cat1Box: TCheckBox;
    Edit1: TEdit;
    Label64: TLabel;
    Cat2Box: TCheckBox;
    StringGrid2: TStringGrid;
    Label37: TLabel;
    BitBtn33: TBitBtn;
    BitBtn35: TBitBtn;
    StringGrid3: TStringGrid;
    p_chart: TTabSheet;
    p_fov: TTabSheet;
    p_filter: TTabSheet;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    GroupBox2: TGroupBox;
    StarBox: TCheckBox;
    GroupBox1: TGroupBox;
    NebBox: TCheckBox;
    BigNebBox: TCheckBox;
    p_image: TTabSheet;
    GroupBox3: TGroupBox;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label75: TLabel;
    Label77: TLabel;
    realskydir: TEdit;
    realskydrive: TEdit;
    realskyfile: TEdit;
    RealSkyNord: TCheckBox;
    RealSkySud: TCheckBox;
    DSS102CD: TCheckBox;
    usesubsample: TCheckBox;
    realskymax: TEdit;
    realskymb: TEdit;
    reallist: TCheckBox;
    dssautofilter: TCheckBox;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    GroupBox4: TGroupBox;
    compdss: TCheckBox;
    GroupBox5: TGroupBox;
    Label50: TLabel;
    Label53: TLabel;
    Label89: TLabel;
    PlanetBox: TCheckBox;
    Planet3: TEdit;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    PlanetBox2: TCheckBox;
    PlanetBox3: TCheckBox;
    BitBtn31: TBitBtn;
    PlanetBox4: TCheckBox;
    GRS: TFloatEdit;
    BitBtn37: TBitBtn;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label70: TLabel;
    NbComet: TLabel;
    CometList: TListBox;
    com1: TEdit;
    com2: TEdit;
    com3: TEdit;
    com4: TEdit;
    com5: TEdit;
    com6: TEdit;
    com7: TEdit;
    com8: TEdit;
    com9: TEdit;
    com10: TEdit;
    com11: TEdit;
    RadioComet1: TRadioGroup;
    GroupBox6: TGroupBox;
    Image1: TImage;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    NbAster: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label88: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    AsterList: TListBox;
    RadioAsteroid1: TRadioGroup;
    RadioAsteroid2: TRadioGroup;
    ast1: TEdit;
    ast5: TEdit;
    ast8: TEdit;
    ast3: TEdit;
    ast6: TEdit;
    ast9: TEdit;
    ast10: TEdit;
    ast4: TEdit;
    ast7: TEdit;
    ast11: TEdit;
    ast2: TEdit;
    AstMax: TEdit;
    BitBtn8: TBitBtn;
    Astmin: TEdit;
    Panel1: TPanel;
    Label68: TLabel;
    PMBox: TCheckBox;
    DrawPmBox: TCheckBox;
    lDrawPMy: TLongEdit;
    GroupBox7: TGroupBox;
    fw1: TFloatEdit;
    fw2: TFloatEdit;
    fw3: TFloatEdit;
    fw4: TFloatEdit;
    fw5: TFloatEdit;
    fw6: TFloatEdit;
    fw7: TFloatEdit;
    fw8: TFloatEdit;
    fw9: TFloatEdit;
    fw10: TFloatEdit;
    fw0: TFloatEdit;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    fw00: TFloatEdit;
    Panel4: TPanel;
    Panel3: TPanel;
    Label110: TLabel;
    fsmagvis: TFloatEdit;
    StarAutoBox: TCheckBox;
    Panel2: TPanel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label76: TLabel;
    Label78: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    fsmag0: TFloatEdit;
    fsmag1: TFloatEdit;
    fsmag2: TFloatEdit;
    fsmag3: TFloatEdit;
    fsmag4: TFloatEdit;
    fsmag5: TFloatEdit;
    fsmag6: TFloatEdit;
    fsmag7: TFloatEdit;
    fsmag8: TFloatEdit;
    fsmag9: TFloatEdit;
    Panel5: TPanel;
    fmag0: TFloatEdit;
    fmag1: TFloatEdit;
    fmag2: TFloatEdit;
    fmag3: TFloatEdit;
    fmag4: TFloatEdit;
    fmag5: TFloatEdit;
    fmag6: TFloatEdit;
    fdim0: TFloatEdit;
    fdim1: TFloatEdit;
    fdim2: TFloatEdit;
    fdim3: TFloatEdit;
    fdim4: TFloatEdit;
    fdim5: TFloatEdit;
    fdim6: TFloatEdit;
    Label48: TLabel;
    Label49: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    fmag7: TFloatEdit;
    fmag8: TFloatEdit;
    fmag9: TFloatEdit;
    fdim7: TFloatEdit;
    fdim8: TFloatEdit;
    fdim9: TFloatEdit;
    CancelBtn: TButton;
    OKBtn: TButton;
    HelpBtn: TButton;
    Label113: TLabel;
    Label114: TLabel;
    Label15: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label120: TLabel;
    p_fonts: TTabSheet;
    Label51: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    gridfont: TEdit;
    labelfont: TEdit;
    legendfont: TEdit;
    statusfont: TEdit;
    listfont: TEdit;
    prtfont: TEdit;
    FontDialog1: TFontDialog;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Button1: TButton;
    FolderDialog1: TFolderDialog;
    stardisplay: TRadioGroup;
    nebuladisplay: TRadioGroup;
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure FormCreate(Sender: TObject);
    procedure SelectFontClick(Sender: TObject);
    procedure DefaultFontClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FWChange(Sender: TObject);
    procedure CDCStarSelClick(Sender: TObject);
    procedure CDCStarField1Change(Sender: TObject);
    procedure CDCStarField2Change(Sender: TObject);
    procedure CDCStarPathChange(Sender: TObject);
    procedure CDCStarSelPathClick(Sender: TObject);
    procedure StarBoxClick(Sender: TObject);
    procedure StarAutoBoxClick(Sender: TObject);
    procedure NebBoxClick(Sender: TObject);
    procedure BigNebBoxClick(Sender: TObject);
    procedure fsmagvisChange(Sender: TObject);
    procedure fsmagChange(Sender: TObject);
    procedure fmagChange(Sender: TObject);
    procedure fdimChange(Sender: TObject);
    procedure CDCNebSelPathClick(Sender: TObject);
    procedure CDCNebSelClick(Sender: TObject);
    procedure CDCNebField1Change(Sender: TObject);
    procedure CDCNebField2Change(Sender: TObject);
    procedure CDCNebPathChange(Sender: TObject);
    procedure USNBrightClick(Sender: TObject);
    procedure IRVarClick(Sender: TObject);
    procedure GCVBoxClick(Sender: TObject);
    procedure Fgcv1Change(Sender: TObject);
    procedure Fgcv2Change(Sender: TObject);
    procedure WDSboxClick(Sender: TObject);
    procedure Fwds1Change(Sender: TObject);
    procedure Fwds2Change(Sender: TObject);
    procedure gcv3Change(Sender: TObject);
    procedure wds3Change(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure stardisplayClick(Sender: TObject);
    procedure nebuladisplayClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    ccat : conf_catalog;
    cshr : conf_shared;
    cskyc : conf_skychart;
    cplot : conf_plot;
    cmain : conf_main;
    procedure SetLang(lang:string);
    function SelectPage(txt:string):boolean;
    procedure SetFonts(ctrl:Tedit;num:integer);
    procedure ShowDisplay;
    procedure ShowFonts;
    procedure ShowField;
    procedure ShowFilter;
    procedure ShowCDCStar;
    procedure ShowCDCNeb;
  end;

var
  f_config: Tf_config;

implementation

uses pu_main;

{$R *.dfm}

{$include i_config.pas }


end.
