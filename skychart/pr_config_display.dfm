object f_config_display: Tf_config_display
  Left = 0
  Top = 0
  Width = 490
  Height = 440
  TabOrder = 0
  object pa_display: TPageControl
    Left = 0
    Top = 0
    Width = 490
    Height = 440
    ActivePage = t_display
    Align = alClient
    TabOrder = 0
    object t_display: TTabSheet
      Caption = 't_display'
      TabVisible = False
      object Label14: TLabel
        Left = 0
        Top = 0
        Width = 70
        Height = 13
        Caption = 'Display Setting'
      end
      object stardisplay: TRadioGroup
        Left = 8
        Top = 120
        Width = 441
        Height = 65
        Caption = 'Star Display'
        Columns = 3
        Items.Strings = (
          'Line mode'
          'Photographic'
          'Parametric')
        TabOrder = 0
        OnClick = stardisplayClick
      end
      object nebuladisplay: TRadioGroup
        Left = 8
        Top = 32
        Width = 441
        Height = 65
        Caption = 'Nebula Display'
        Columns = 2
        Items.Strings = (
          'Line mode'
          'Graphic')
        TabOrder = 1
        OnClick = nebuladisplayClick
      end
      object starvisual: TGroupBox
        Left = 8
        Top = 192
        Width = 441
        Height = 233
        Caption = 'Star Display  Properties'
        TabOrder = 2
        Visible = False
        object Label256: TLabel
          Left = 24
          Top = 38
          Width = 76
          Height = 13
          Caption = 'Faint Stars Size '
        end
        object Label262: TLabel
          Left = 24
          Top = 112
          Width = 39
          Height = 13
          Caption = 'Contrast'
        end
        object Label263: TLabel
          Left = 24
          Top = 150
          Width = 73
          Height = 13
          Caption = 'Color saturation'
        end
        object Label257: TLabel
          Left = 24
          Top = 75
          Width = 119
          Height = 13
          Caption = 'Increment for Bright Stars'
        end
        object StarSizeBar: TTrackBar
          Left = 170
          Top = 32
          Width = 225
          Height = 25
          Max = 50
          Min = 1
          Orientation = trHorizontal
          PageSize = 5
          Frequency = 5
          Position = 1
          SelEnd = 0
          SelStart = 0
          TabOrder = 0
          TickMarks = tmBottomRight
          TickStyle = tsAuto
          OnChange = StarSizeBarChange
        end
        object StarContrastBar: TTrackBar
          Left = 170
          Top = 106
          Width = 225
          Height = 25
          Max = 1000
          Min = 100
          Orientation = trHorizontal
          PageSize = 100
          Frequency = 100
          Position = 100
          SelEnd = 0
          SelStart = 0
          TabOrder = 1
          TickMarks = tmBottomRight
          TickStyle = tsAuto
          OnChange = StarContrastBarChange
        end
        object SaturationBar: TTrackBar
          Left = 170
          Top = 144
          Width = 225
          Height = 25
          Max = 255
          Orientation = trHorizontal
          PageSize = 28
          Frequency = 28
          Position = 0
          SelEnd = 0
          SelStart = 0
          TabOrder = 2
          TickMarks = tmBottomRight
          TickStyle = tsAuto
          OnChange = SaturationBarChange
        end
        object SizeContrastBar: TTrackBar
          Left = 170
          Top = 69
          Width = 225
          Height = 25
          Max = 100
          Min = 10
          Orientation = trHorizontal
          PageSize = 10
          Frequency = 10
          Position = 10
          SelEnd = 0
          SelStart = 0
          TabOrder = 3
          TickMarks = tmBottomRight
          TickStyle = tsAuto
          OnChange = SizeContrastBarChange
        end
        object StarButton1: TButton
          Left = 16
          Top = 192
          Width = 95
          Height = 25
          Caption = 'Default'
          TabOrder = 4
          OnClick = StarButton1Click
        end
        object StarButton2: TButton
          Left = 120
          Top = 192
          Width = 95
          Height = 25
          Caption = 'Naked Eye'
          TabOrder = 5
          OnClick = StarButton2Click
        end
        object StarButton3: TButton
          Left = 224
          Top = 192
          Width = 95
          Height = 25
          Caption = 'High Color'
          TabOrder = 6
          OnClick = StarButton3Click
        end
        object StarButton4: TButton
          Left = 336
          Top = 192
          Width = 95
          Height = 25
          Caption = 'Black/White'
          TabOrder = 7
          OnClick = StarButton4Click
        end
      end
    end
    object t_color: TTabSheet
      Caption = 't_color'
      ImageIndex = 2
      TabVisible = False
      object Label8: TLabel
        Left = 0
        Top = 0
        Width = 60
        Height = 13
        Caption = 'Color Setting'
      end
      object Label181: TLabel
        Left = 86
        Top = 62
        Width = 18
        Height = 13
        Caption = '-0.3'
      end
      object Label182: TLabel
        Left = 142
        Top = 62
        Width = 18
        Height = 13
        Caption = '-0.1'
      end
      object Label183: TLabel
        Left = 198
        Top = 62
        Width = 15
        Height = 13
        Caption = '0.2'
      end
      object Label184: TLabel
        Left = 254
        Top = 62
        Width = 15
        Height = 13
        Caption = '0.5'
      end
      object Label185: TLabel
        Left = 304
        Top = 62
        Width = 15
        Height = 13
        Caption = '0.8'
      end
      object Label186: TLabel
        Left = 358
        Top = 62
        Width = 15
        Height = 13
        Caption = '1.3'
      end
      object Label187: TLabel
        Left = 416
        Top = 62
        Width = 6
        Height = 13
        Caption = '>'
      end
      object Label188: TLabel
        Left = 40
        Top = 62
        Width = 6
        Height = 13
        Caption = '<'
      end
      object Label189: TLabel
        Left = 32
        Top = 38
        Width = 83
        Height = 13
        Caption = 'Star colour (B-V) :'
      end
      object Label193: TLabel
        Left = 208
        Top = 142
        Width = 53
        Height = 13
        Alignment = taCenter
        Caption = 'Coord. Grid'
      end
      object Label194: TLabel
        Left = 291
        Top = 142
        Width = 38
        Height = 13
        Alignment = taCenter
        Caption = 'Eq. Grid'
      end
      object Label195: TLabel
        Left = 184
        Top = 214
        Width = 22
        Height = 13
        Alignment = taCenter
        Caption = 'Orbit'
      end
      object Label197: TLabel
        Left = 48
        Top = 142
        Width = 60
        Height = 13
        Alignment = taCenter
        Caption = 'Constellation'
      end
      object Label198: TLabel
        Left = 136
        Top = 142
        Width = 45
        Height = 13
        Alignment = taCenter
        Caption = 'Boundary'
      end
      object Label199: TLabel
        Left = 368
        Top = 214
        Width = 44
        Height = 13
        Alignment = taCenter
        Caption = 'Eyepiece'
      end
      object Label196: TLabel
        Left = 362
        Top = 142
        Width = 53
        Height = 13
        Alignment = taCenter
        Caption = 'Misc. Lines'
      end
      object Label11: TLabel
        Left = 308
        Top = 214
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Horizon'
      end
      object Label6: TLabel
        Left = 56
        Top = 214
        Width = 38
        Height = 13
        Alignment = taCenter
        Caption = 'Asteroid'
      end
      object Label234: TLabel
        Left = 120
        Top = 214
        Width = 30
        Height = 13
        Alignment = taCenter
        Caption = 'Comet'
      end
      object Label269: TLabel
        Left = 240
        Top = 214
        Width = 49
        Height = 13
        Caption = 'Milky Way'
      end
      object bg1: TPanel
        Left = 32
        Top = 76
        Width = 401
        Height = 38
        TabOrder = 0
        object Shape1: TShape
          Tag = 1
          Left = 24
          Top = 4
          Width = 30
          Height = 30
          Shape = stCircle
          OnMouseUp = ShapeMouseUp
        end
        object Shape2: TShape
          Tag = 2
          Left = 77
          Top = 4
          Width = 30
          Height = 30
          Shape = stCircle
          OnMouseUp = ShapeMouseUp
        end
        object Shape3: TShape
          Tag = 3
          Left = 130
          Top = 4
          Width = 30
          Height = 30
          Shape = stCircle
          OnMouseUp = ShapeMouseUp
        end
        object Shape4: TShape
          Tag = 4
          Left = 184
          Top = 4
          Width = 30
          Height = 30
          Shape = stCircle
          OnMouseUp = ShapeMouseUp
        end
        object Shape5: TShape
          Tag = 5
          Left = 237
          Top = 4
          Width = 30
          Height = 30
          Shape = stCircle
          OnMouseUp = ShapeMouseUp
        end
        object Shape6: TShape
          Tag = 6
          Left = 290
          Top = 4
          Width = 30
          Height = 30
          Shape = stCircle
          OnMouseUp = ShapeMouseUp
        end
        object Shape7: TShape
          Tag = 7
          Left = 344
          Top = 4
          Width = 30
          Height = 30
          Shape = stCircle
          OnMouseUp = ShapeMouseUp
        end
      end
      object bg3: TPanel
        Left = 32
        Top = 156
        Width = 401
        Height = 38
        TabOrder = 1
        object Shape15: TShape
          Tag = 16
          Left = 32
          Top = 4
          Width = 33
          Height = 30
          Brush.Style = bsClear
          Pen.Color = clWhite
          Pen.Width = 3
          Shape = stSquare
          OnMouseUp = ShapeMouseUp
        end
        object Shape16: TShape
          Tag = 17
          Left = 108
          Top = 4
          Width = 30
          Height = 30
          Brush.Style = bsClear
          Pen.Color = clWhite
          Pen.Width = 3
          Shape = stSquare
          OnMouseUp = ShapeMouseUp
        end
        object Shape14: TShape
          Tag = 15
          Left = 336
          Top = 4
          Width = 30
          Height = 30
          Brush.Style = bsClear
          Pen.Color = clWhite
          Pen.Width = 3
          Shape = stSquare
          OnMouseUp = ShapeMouseUp
        end
        object Shape12: TShape
          Tag = 13
          Left = 264
          Top = 4
          Width = 30
          Height = 30
          Brush.Style = bsClear
          Pen.Color = clWhite
          Pen.Width = 3
          Shape = stSquare
          OnMouseUp = ShapeMouseUp
        end
        object Shape11: TShape
          Tag = 12
          Left = 188
          Top = 4
          Width = 30
          Height = 30
          Brush.Style = bsClear
          Pen.Color = clWhite
          Pen.Width = 3
          Shape = stSquare
          OnMouseUp = ShapeMouseUp
        end
      end
      object DefColor: TRadioGroup
        Left = 32
        Top = 288
        Width = 401
        Height = 89
        Caption = 'Standard  Color'
        Columns = 2
        Items.Strings = (
          'Default'
          'Red'
          'White on Black'
          'Black on White')
        TabOrder = 2
        OnClick = DefColorClick
      end
      object bg4: TPanel
        Left = 32
        Top = 228
        Width = 401
        Height = 38
        TabOrder = 3
        object Shape26: TShape
          Tag = 20
          Left = 24
          Top = 4
          Width = 30
          Height = 30
          Shape = stCircle
          OnMouseUp = ShapeMouseUp
        end
        object Shape27: TShape
          Tag = 21
          Left = 87
          Top = 4
          Width = 30
          Height = 30
          Shape = stCircle
          OnMouseUp = ShapeMouseUp
        end
        object Shape28: TShape
          Tag = 22
          Left = 214
          Top = 4
          Width = 30
          Height = 30
          Shape = stSquare
          OnMouseUp = ShapeMouseUp
        end
        object Shape25: TShape
          Tag = 19
          Left = 277
          Top = 4
          Width = 30
          Height = 30
          Shape = stSquare
          OnMouseUp = ShapeMouseUp
        end
        object Shape13: TShape
          Tag = 14
          Left = 150
          Top = 4
          Width = 30
          Height = 30
          Brush.Style = bsClear
          Pen.Color = clWhite
          Pen.Width = 3
          Shape = stSquare
          OnMouseUp = ShapeMouseUp
        end
        object Shape17: TShape
          Tag = 18
          Left = 341
          Top = 4
          Width = 30
          Height = 30
          Brush.Style = bsClear
          Pen.Color = clWhite
          Pen.Width = 3
          Shape = stCircle
          OnMouseUp = ShapeMouseUp
        end
      end
    end
    object t_nebcolor: TTabSheet
      Caption = 't_nebcolor'
      ImageIndex = 4
      TabVisible = False
      object lblDSO: TLabel
        Left = 0
        Top = 0
        Width = 114
        Height = 13
        Caption = 'Deep-sky object colours'
      end
      object lblDSOCScheme: TLabel
        Left = 16
        Top = 24
        Width = 138
        Height = 13
        Caption = 'Use a preset colour scheme :'
      end
      object gbDSOCOverrides: TGroupBox
        Left = 16
        Top = 80
        Width = 465
        Height = 193
        Caption = ' Choose colours for object type  '
        TabOrder = 0
        object lblAst: TLabel
          Left = 16
          Top = 44
          Width = 39
          Height = 13
          Caption = 'Asterism'
        end
        object shpAst: TShape
          Left = 120
          Top = 44
          Width = 33
          Height = 13
          Shape = stRoundRect
          OnMouseUp = ShapeDSOMouseUp
        end
        object lblSN: TLabel
          Left = 240
          Top = 44
          Width = 93
          Height = 13
          Caption = 'Supernova remnant'
        end
        object shpSN: TShape
          Left = 360
          Top = 44
          Width = 33
          Height = 13
          OnMouseUp = ShapeDSOMouseUp
        end
        object lblOCl: TLabel
          Left = 16
          Top = 64
          Width = 60
          Height = 13
          Caption = 'Open cluster'
        end
        object lblGCl: TLabel
          Left = 16
          Top = 84
          Width = 73
          Height = 13
          Caption = 'Globular cluster'
        end
        object lblPNe: TLabel
          Left = 16
          Top = 104
          Width = 79
          Height = 13
          Caption = 'Planetary nebula'
        end
        object lblDN: TLabel
          Left = 16
          Top = 124
          Width = 58
          Height = 13
          Caption = 'Dark nebula'
        end
        object lblEN: TLabel
          Left = 16
          Top = 144
          Width = 76
          Height = 13
          Caption = 'Emission nebula'
        end
        object lblRN: TLabel
          Left = 16
          Top = 164
          Width = 83
          Height = 13
          Caption = 'Reflection nebula'
        end
        object shpRN: TShape
          Left = 120
          Top = 164
          Width = 33
          Height = 13
          OnMouseUp = ShapeDSOMouseUp
        end
        object shpEN: TShape
          Left = 120
          Top = 144
          Width = 33
          Height = 13
          OnMouseUp = ShapeDSOMouseUp
        end
        object shpDN: TShape
          Left = 120
          Top = 124
          Width = 33
          Height = 13
          OnMouseUp = ShapeDSOMouseUp
        end
        object shpPNe: TShape
          Left = 120
          Top = 104
          Width = 33
          Height = 13
          OnMouseUp = ShapeDSOMouseUp
        end
        object shpGCl: TShape
          Left = 120
          Top = 84
          Width = 33
          Height = 13
          OnMouseUp = ShapeDSOMouseUp
        end
        object shpOCl: TShape
          Left = 120
          Top = 64
          Width = 33
          Height = 13
          OnMouseUp = ShapeDSOMouseUp
        end
        object lblGxy: TLabel
          Left = 240
          Top = 64
          Width = 32
          Height = 13
          Caption = 'Galaxy'
        end
        object lblGxyCl: TLabel
          Left = 240
          Top = 84
          Width = 66
          Height = 13
          Caption = 'Galaxy cluster'
        end
        object lblQ: TLabel
          Left = 240
          Top = 104
          Width = 34
          Height = 13
          Caption = 'Quasar'
        end
        object lblGL: TLabel
          Left = 240
          Top = 124
          Width = 81
          Height = 13
          Caption = 'Gravitational lens'
        end
        object lblNE: TLabel
          Left = 240
          Top = 144
          Width = 108
          Height = 13
          Caption = 'Non-existent/unknown'
          WordWrap = True
        end
        object shpNE: TShape
          Left = 360
          Top = 144
          Width = 33
          Height = 13
          OnMouseUp = ShapeDSOMouseUp
        end
        object shpGL: TShape
          Left = 360
          Top = 124
          Width = 33
          Height = 13
          OnMouseUp = ShapeDSOMouseUp
        end
        object shpQ: TShape
          Left = 360
          Top = 104
          Width = 33
          Height = 13
          OnMouseUp = ShapeDSOMouseUp
        end
        object shpGxyCl: TShape
          Left = 360
          Top = 84
          Width = 33
          Height = 13
          OnMouseUp = ShapeDSOMouseUp
        end
        object shpGxy: TShape
          Left = 360
          Top = 64
          Width = 33
          Height = 13
          OnMouseUp = ShapeDSOMouseUp
        end
        object lblDSOType: TLabel
          Left = 240
          Top = 24
          Width = 66
          Height = 13
          Caption = 'Object type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblDSOColour: TLabel
          Left = 360
          Top = 24
          Width = 37
          Height = 13
          Caption = 'Colour'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblDSOColourFill: TLabel
          Left = 416
          Top = 24
          Width = 24
          Height = 13
          Caption = 'Fill?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 16
          Top = 24
          Width = 66
          Height = 13
          Caption = 'Object type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 120
          Top = 24
          Width = 37
          Height = 13
          Caption = 'Colour'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 176
          Top = 24
          Width = 24
          Height = 13
          Caption = 'Fill?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object chkFillAst: TCheckBox
          Left = 176
          Top = 44
          Width = 17
          Height = 13
          Enabled = False
          TabOrder = 1
          Visible = False
          OnClick = chkFillAstClick
        end
        object chkFillOCl: TCheckBox
          Left = 176
          Top = 64
          Width = 17
          Height = 13
          TabOrder = 2
          OnClick = chkFillOClClick
        end
        object chkFillGCl: TCheckBox
          Left = 176
          Top = 84
          Width = 17
          Height = 13
          TabOrder = 3
          OnClick = chkFillGClClick
        end
        object chkFillPNe: TCheckBox
          Left = 176
          Top = 104
          Width = 17
          Height = 13
          TabOrder = 4
          OnClick = chkFillPNeClick
        end
        object chkFillDN: TCheckBox
          Left = 176
          Top = 124
          Width = 17
          Height = 13
          TabOrder = 5
          OnClick = chkFillDNClick
        end
        object chkFillEN: TCheckBox
          Left = 176
          Top = 144
          Width = 17
          Height = 13
          TabOrder = 6
          OnClick = chkFillENClick
        end
        object chkFillRN: TCheckBox
          Left = 176
          Top = 164
          Width = 17
          Height = 13
          TabOrder = 7
          OnClick = chkFillRNClick
        end
        object chkFillSN: TCheckBox
          Left = 416
          Top = 44
          Width = 17
          Height = 13
          TabOrder = 8
          OnClick = chkFillSNClick
        end
        object chkFillGxy: TCheckBox
          Left = 416
          Top = 64
          Width = 17
          Height = 13
          TabOrder = 9
          OnClick = chkFillGxyClick
        end
        object chkFillGxyCl: TCheckBox
          Left = 416
          Top = 84
          Width = 17
          Height = 13
          TabOrder = 10
          OnClick = chkFillGxyClClick
        end
        object chkFillQ: TCheckBox
          Left = 416
          Top = 104
          Width = 17
          Height = 13
          TabOrder = 11
          OnClick = chkFillQClick
        end
        object chkFillGL: TCheckBox
          Left = 416
          Top = 124
          Width = 17
          Height = 13
          Enabled = False
          TabOrder = 12
          Visible = False
          OnClick = chkFillGLClick
        end
        object chkFillNE: TCheckBox
          Left = 416
          Top = 144
          Width = 17
          Height = 13
          Enabled = False
          TabOrder = 0
          Visible = False
          OnClick = chkFillNEClick
        end
      end
      object GroupBox2: TGroupBox
        Left = 16
        Top = 280
        Width = 465
        Height = 137
        Caption = ' Adjust colour brightness '
        TabOrder = 1
        object Label1: TLabel
          Left = 24
          Top = 20
          Width = 109
          Height = 13
          Caption = 'Low surface brightness'
        end
        object Label2: TLabel
          Left = 248
          Top = 20
          Width = 111
          Height = 13
          Caption = 'High surface brightness'
        end
        object Label3: TLabel
          Left = 16
          Top = 68
          Width = 203
          Height = 13
          Caption = 'Fainter                                           Brighter  '
        end
        object Label4: TLabel
          Left = 240
          Top = 68
          Width = 209
          Height = 13
          Caption = 'Fainter                                             Brighter  '
        end
        object NebBrightBar: TTrackBar
          Left = 232
          Top = 40
          Width = 217
          Height = 25
          Max = 255
          Orientation = trHorizontal
          PageSize = 26
          Frequency = 26
          Position = 0
          SelEnd = 0
          SelStart = 0
          TabOrder = 0
          TickMarks = tmBottomRight
          TickStyle = tsAuto
          OnChange = NebBrightBarChange
        end
        object NebGrayBar: TTrackBar
          Left = 8
          Top = 40
          Width = 209
          Height = 25
          Max = 255
          Orientation = trHorizontal
          PageSize = 26
          Frequency = 26
          Position = 0
          SelEnd = 0
          SelStart = 0
          TabOrder = 1
          TickMarks = tmBottomRight
          TickStyle = tsAuto
          OnChange = NebGrayBarChange
        end
        object DefNebColorButton: TButton
          Left = 384
          Top = 88
          Width = 75
          Height = 25
          Caption = 'Default'
          TabOrder = 2
          OnClick = DefNebColorButtonClick
        end
        object NebColorPanel: TPanel
          Left = 112
          Top = 88
          Width = 233
          Height = 41
          TabOrder = 3
          object Shape29: TShape
            Left = 32
            Top = 4
            Width = 65
            Height = 33
            Shape = stEllipse
          end
          object Shape30: TShape
            Left = 136
            Top = 4
            Width = 65
            Height = 33
            Shape = stEllipse
          end
        end
      end
      object lstDSOCScheme: TListBox
        Left = 160
        Top = 24
        Width = 145
        Height = 41
        ItemHeight = 13
        Items.Strings = (
          'CdC v2 default'
          'CdC v3 default')
        TabOrder = 2
        OnClick = lstDSOCSchemeClick
      end
    end
    object t_skycolor: TTabSheet
      Caption = 't_skycolor'
      ImageIndex = 3
      TabVisible = False
      object Label200: TLabel
        Left = 0
        Top = 0
        Width = 81
        Height = 13
        Caption = 'Sky Color Setting'
      end
      object Label202: TLabel
        Left = 24
        Top = 272
        Width = 50
        Height = 57
        Alignment = taCenter
        AutoSize = False
        Caption = 'Day Time'
        WordWrap = True
      end
      object Label205: TLabel
        Left = 120
        Top = 272
        Width = 169
        Height = 57
        Alignment = taCenter
        AutoSize = False
        Caption = 'Twilight'
        WordWrap = True
      end
      object Label208: TLabel
        Left = 320
        Top = 272
        Width = 81
        Height = 57
        Alignment = taCenter
        AutoSize = False
        Caption = 'Astronomical Twilight'
        WordWrap = True
      end
      object skycolorbox: TRadioGroup
        Left = 24
        Top = 48
        Width = 364
        Height = 89
        Caption = 'Sky Color'
        Columns = 2
        Items.Strings = (
          'Fixed Black'
          'Automatic')
        TabOrder = 0
        OnClick = skycolorboxClick
      end
      object Panel6: TPanel
        Left = 24
        Top = 168
        Width = 364
        Height = 97
        TabOrder = 1
        object Shape18: TShape
          Tag = 1
          Left = 0
          Top = 0
          Width = 52
          Height = 97
          Pen.Color = clSilver
          OnMouseUp = ShapeSkyMouseUp
        end
        object Shape19: TShape
          Tag = 2
          Left = 52
          Top = 0
          Width = 52
          Height = 97
          Pen.Color = clSilver
          OnMouseUp = ShapeSkyMouseUp
        end
        object Shape20: TShape
          Tag = 3
          Left = 104
          Top = 0
          Width = 52
          Height = 97
          Pen.Color = clSilver
          OnMouseUp = ShapeSkyMouseUp
        end
        object Shape21: TShape
          Tag = 4
          Left = 156
          Top = 0
          Width = 52
          Height = 97
          Pen.Color = clSilver
          OnMouseUp = ShapeSkyMouseUp
        end
        object Shape22: TShape
          Tag = 5
          Left = 208
          Top = 0
          Width = 52
          Height = 97
          Pen.Color = clSilver
          OnMouseUp = ShapeSkyMouseUp
        end
        object Shape23: TShape
          Tag = 6
          Left = 260
          Top = 0
          Width = 52
          Height = 97
          Pen.Color = clSilver
          OnMouseUp = ShapeSkyMouseUp
        end
        object Shape24: TShape
          Tag = 7
          Left = 312
          Top = 0
          Width = 52
          Height = 97
          Pen.Color = clSilver
          OnMouseUp = ShapeSkyMouseUp
        end
      end
      object Button3: TButton
        Left = 24
        Top = 344
        Width = 75
        Height = 25
        Caption = 'Reset'
        TabOrder = 2
        OnClick = Button3Click
      end
    end
    object t_lines: TTabSheet
      Caption = 't_lines'
      ImageIndex = 5
      TabVisible = False
      object Label9: TLabel
        Left = 0
        Top = 0
        Width = 61
        Height = 13
        Caption = 'Lines Setting'
      end
      object EqGrid: TCheckBox
        Left = 16
        Top = 64
        Width = 153
        Height = 30
        Caption = 'Add Equatorial Grid'
        TabOrder = 0
        OnClick = EqGridClick
      end
      object CGrid: TCheckBox
        Left = 16
        Top = 32
        Width = 153
        Height = 30
        Caption = 'Show Coordinate Grid'
        TabOrder = 1
        OnClick = CGridClick
      end
      object ecliptic: TCheckBox
        Left = 184
        Top = 32
        Width = 145
        Height = 30
        Caption = 'Show Ecliptic'
        TabOrder = 2
        OnClick = eclipticClick
      end
      object galactic: TCheckBox
        Left = 184
        Top = 64
        Width = 153
        Height = 30
        Caption = 'Show Galactic Equator'
        TabOrder = 3
        OnClick = galacticClick
      end
      object GridNum: TCheckBox
        Left = 352
        Top = 32
        Width = 129
        Height = 30
        Caption = 'Show Grid Label'
        TabOrder = 4
        OnClick = GridNumClick
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 120
        Width = 273
        Height = 113
        Caption = 'Constellation Figures'
        TabOrder = 5
        object Label132: TLabel
          Left = 16
          Top = 52
          Width = 151
          Height = 13
          Caption = 'Constellation Figure File Name : '
        end
        object Constl: TCheckBox
          Left = 8
          Top = 19
          Width = 169
          Height = 30
          Caption = 'Show Constellation Figure'
          TabOrder = 0
          OnClick = ConstlClick
        end
        object ConstlFile: TEdit
          Left = 16
          Top = 68
          Width = 201
          Height = 21
          TabOrder = 1
          OnChange = ConstlFileChange
        end
        object ConstlFileBtn: TBitBtn
          Tag = 8
          Left = 215
          Top = 65
          Width = 26
          Height = 26
          TabOrder = 2
          TabStop = False
          OnClick = ConstlFileBtnClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000C0CFCFC0CFCF
            C0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CF
            CFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0
            CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCF
            0000000000000000000000000000000000000000000000000000000000000000
            00C0CFCFC0CFCFC0CFCFC0CFCFC0CFCF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000C0CFCFC0CFCFC0CFCFC0CFCF
            7F7F7FFFFFFFC0CFCF00FFFFC0CFCF00FFFFC0CFCF00FFFFC0CFCF00FFFF7F7F
            7F000000C0CFCFC0CFCFC0CFCFC0CFCF7F7F7FFFFFFF00FFFFC0CFCF00FFFFC0
            CFCF00FFFFC0CFCF00FFFFC0CFCF7F7F7F000000C0CFCFC0CFCFC0CFCFC0CFCF
            7F7F7FFFFFFFC0CFCF00FFFFC0CFCF00FFFFC0CFCF00FFFFC0CFCF00FFFF7F7F
            7F000000C0CFCFC0CFCFC0CFCFC0CFCF7F7F7FFFFFFF00FFFFC0CFCF00FFFFC0
            CFCF00FFFFC0CFCF00FFFFC0CFCF7F7F7F000000C0CFCFC0CFCFC0CFCFC0CFCF
            7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F
            7F000000C0CFCFC0CFCFC0CFCFC0CFCF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000C0CFCFC0CFCFC0CFCFC0CFCFC0CFCF
            7F7F7F00FFFFFFFFFF00FFFFFFFFFF7F7F7FC0CFCFC0CFCFC0CFCFC0CFCFC0CF
            CFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCF7F7F7F7F7F7F7F7F7F7F7F7FC0
            CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCF
            C0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CF
            CFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0
            CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCF
            C0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CF
            CFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0
            CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCF}
          Layout = blGlyphTop
          Margin = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 248
        Width = 273
        Height = 113
        Caption = 'Constellation Boundaries'
        TabOrder = 6
        object Label72: TLabel
          Left = 16
          Top = 48
          Width = 167
          Height = 13
          Caption = 'Constellation Boundary File Name : '
        end
        object Constb: TCheckBox
          Left = 8
          Top = 16
          Width = 244
          Height = 30
          Caption = 'Show Constellation Boundary'
          TabOrder = 0
          OnClick = ConstbClick
        end
        object ConstbFile: TEdit
          Left = 16
          Top = 64
          Width = 201
          Height = 21
          TabOrder = 1
          OnChange = ConstbFileChange
        end
        object ConstbfileBtn: TBitBtn
          Tag = 8
          Left = 215
          Top = 61
          Width = 26
          Height = 26
          TabOrder = 2
          TabStop = False
          OnClick = ConstbfileBtnClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000C0CFCFC0CFCF
            C0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CF
            CFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0
            CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCF
            0000000000000000000000000000000000000000000000000000000000000000
            00C0CFCFC0CFCFC0CFCFC0CFCFC0CFCF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000C0CFCFC0CFCFC0CFCFC0CFCF
            7F7F7FFFFFFFC0CFCF00FFFFC0CFCF00FFFFC0CFCF00FFFFC0CFCF00FFFF7F7F
            7F000000C0CFCFC0CFCFC0CFCFC0CFCF7F7F7FFFFFFF00FFFFC0CFCF00FFFFC0
            CFCF00FFFFC0CFCF00FFFFC0CFCF7F7F7F000000C0CFCFC0CFCFC0CFCFC0CFCF
            7F7F7FFFFFFFC0CFCF00FFFFC0CFCF00FFFFC0CFCF00FFFFC0CFCF00FFFF7F7F
            7F000000C0CFCFC0CFCFC0CFCFC0CFCF7F7F7FFFFFFF00FFFFC0CFCF00FFFFC0
            CFCF00FFFFC0CFCF00FFFFC0CFCF7F7F7F000000C0CFCFC0CFCFC0CFCFC0CFCF
            7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F
            7F000000C0CFCFC0CFCFC0CFCFC0CFCF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000C0CFCFC0CFCFC0CFCFC0CFCFC0CFCF
            7F7F7F00FFFFFFFFFF00FFFFFFFFFF7F7F7FC0CFCFC0CFCFC0CFCFC0CFCFC0CF
            CFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCF7F7F7F7F7F7F7F7F7F7F7F7FC0
            CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCF
            C0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CF
            CFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0
            CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCF
            C0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CF
            CFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0
            CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCFC0CFCF}
          Layout = blGlyphTop
          Margin = 0
        end
      end
      object GroupBox4: TGroupBox
        Left = 288
        Top = 120
        Width = 185
        Height = 105
        Caption = 'Milky Way'
        TabOrder = 7
        object milkyway: TCheckBox
          Left = 8
          Top = 24
          Width = 161
          Height = 30
          Caption = 'Show Milky Way'
          TabOrder = 0
          OnClick = milkywayClick
        end
        object fillmilkyway: TCheckBox
          Left = 8
          Top = 56
          Width = 161
          Height = 30
          Caption = 'Fill Milky Way'
          TabOrder = 1
          OnClick = fillmilkywayClick
        end
      end
    end
    object t_labels: TTabSheet
      Caption = 't_labels'
      ImageIndex = 6
      TabVisible = False
      object Label10: TLabel
        Left = 0
        Top = 0
        Width = 67
        Height = 13
        Caption = 'Labels Setting'
      end
      object MagLabel: TRadioGroup
        Left = 16
        Top = 344
        Width = 225
        Height = 57
        Caption = 'Star Label'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Name'
          'Common Name'
          'Magnitude')
        TabOrder = 0
        OnClick = MagLabelClick
      end
      object constlabel: TRadioGroup
        Left = 264
        Top = 344
        Width = 201
        Height = 57
        Caption = 'Constellation Label'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Full Name'
          'Abbreviation')
        TabOrder = 1
        OnClick = constlabelClick
      end
      object Showlabelall: TCheckBox
        Left = 16
        Top = 32
        Width = 209
        Height = 17
        Caption = 'Display the labels to the chart'
        TabOrder = 2
        OnClick = ShowlabelallClick
      end
      object ShowChartInfo: TCheckBox
        Left = 224
        Top = 32
        Width = 257
        Height = 17
        Caption = 'Display the chart information in the menu bar.'
        TabOrder = 3
        OnClick = ShowChartInfoClick
      end
      object GroupBox5: TGroupBox
        Left = 16
        Top = 64
        Width = 449
        Height = 273
        Caption = 'Label Object'
        TabOrder = 4
        object Label237: TLabel
          Left = 244
          Top = 16
          Width = 65
          Height = 33
          AutoSize = False
          Caption = 'Magnitude difference'
          WordWrap = True
        end
        object Label252: TLabel
          Left = 332
          Top = 32
          Width = 24
          Height = 13
          Caption = 'Color'
        end
        object Label240: TLabel
          Left = 331
          Top = 16
          Width = 26
          Height = 13
          Caption = 'Label'
        end
        object labelcolorStar: TShape
          Tag = 1
          Left = 328
          Top = 56
          Width = 33
          Height = 17
          OnMouseUp = labelcolorMouseUp
        end
        object labelcolorVar: TShape
          Tag = 2
          Left = 328
          Top = 80
          Width = 33
          Height = 17
          OnMouseUp = labelcolorMouseUp
        end
        object labelcolorMult: TShape
          Tag = 3
          Left = 328
          Top = 104
          Width = 33
          Height = 17
          OnMouseUp = labelcolorMouseUp
        end
        object labelcolorNeb: TShape
          Tag = 4
          Left = 328
          Top = 128
          Width = 33
          Height = 17
          OnMouseUp = labelcolorMouseUp
        end
        object labelcolorSol: TShape
          Tag = 5
          Left = 328
          Top = 152
          Width = 33
          Height = 17
          OnMouseUp = labelcolorMouseUp
        end
        object labelcolorConst: TShape
          Tag = 6
          Left = 328
          Top = 176
          Width = 33
          Height = 17
          OnMouseUp = labelcolorMouseUp
        end
        object labelcolorMisc: TShape
          Tag = 7
          Left = 328
          Top = 200
          Width = 33
          Height = 17
          OnMouseUp = labelcolorMouseUp
        end
        object labelcolorchartinfo: TShape
          Tag = 8
          Left = 328
          Top = 224
          Width = 33
          Height = 17
          OnMouseUp = labelcolorMouseUp
        end
        object Label255: TLabel
          Left = 384
          Top = 32
          Width = 20
          Height = 13
          Caption = 'Size'
        end
        object showlabelStar: TCheckBox
          Tag = 1
          Left = 16
          Top = 56
          Width = 209
          Height = 17
          Caption = 'Stars'
          TabOrder = 0
          OnClick = showlabelClick
        end
        object showlabelVar: TCheckBox
          Tag = 2
          Left = 16
          Top = 80
          Width = 209
          Height = 17
          Caption = 'Variable Stars'
          TabOrder = 1
          OnClick = showlabelClick
        end
        object showlabelMult: TCheckBox
          Tag = 3
          Left = 16
          Top = 104
          Width = 209
          Height = 17
          Caption = 'Multiple Stars'
          TabOrder = 2
          OnClick = showlabelClick
        end
        object showlabelNeb: TCheckBox
          Tag = 4
          Left = 16
          Top = 128
          Width = 209
          Height = 17
          Caption = 'Nebulae'
          TabOrder = 3
          OnClick = showlabelClick
        end
        object showlabelSol: TCheckBox
          Tag = 5
          Left = 16
          Top = 152
          Width = 209
          Height = 17
          Caption = 'Solar System'
          TabOrder = 4
          OnClick = showlabelClick
        end
        object showlabelConst: TCheckBox
          Tag = 6
          Left = 16
          Top = 176
          Width = 209
          Height = 17
          Caption = 'Constellation name'
          TabOrder = 5
          OnClick = showlabelClick
        end
        object showlabelMisc: TCheckBox
          Tag = 7
          Left = 16
          Top = 200
          Width = 209
          Height = 17
          Caption = 'Other labels'
          TabOrder = 6
          OnClick = showlabelClick
        end
        object ShowLabelChartInfo: TCheckBox
          Tag = 8
          Left = 16
          Top = 224
          Width = 209
          Height = 17
          Caption = 'Chart Information'
          TabOrder = 7
          OnClick = showlabelClick
        end
        object labelmagStar: TSpinEdit
          Tag = 1
          Left = 256
          Top = 53
          Width = 41
          Height = 22
          MaxValue = 10
          MinValue = 0
          TabOrder = 8
          Value = 0
          OnChange = labelmagChanged
        end
        object labelmagVar: TSpinEdit
          Tag = 2
          Left = 256
          Top = 77
          Width = 41
          Height = 22
          MaxValue = 10
          MinValue = 0
          TabOrder = 9
          Value = 0
          OnChange = labelmagChanged
        end
        object LabelmagMult: TSpinEdit
          Tag = 3
          Left = 256
          Top = 101
          Width = 41
          Height = 22
          MaxValue = 10
          MinValue = 0
          TabOrder = 10
          Value = 0
          OnChange = labelmagChanged
        end
        object labelmagNeb: TSpinEdit
          Tag = 4
          Left = 256
          Top = 125
          Width = 41
          Height = 22
          MaxValue = 10
          MinValue = 0
          TabOrder = 11
          Value = 0
          OnChange = labelmagChanged
        end
        object labelmagSol: TSpinEdit
          Tag = 5
          Left = 256
          Top = 149
          Width = 41
          Height = 22
          MaxValue = 10
          MinValue = 0
          TabOrder = 12
          Value = 0
          OnChange = labelmagChanged
        end
        object labelsizeStar: TSpinEdit
          Tag = 1
          Left = 384
          Top = 53
          Width = 41
          Height = 22
          MaxValue = 48
          MinValue = 2
          TabOrder = 13
          Value = 6
          OnChange = labelsizeChanged
        end
        object labelsizechartinfo: TSpinEdit
          Tag = 8
          Left = 384
          Top = 221
          Width = 41
          Height = 22
          MaxValue = 48
          MinValue = 2
          TabOrder = 14
          Value = 6
          OnChange = labelsizeChanged
        end
        object labelsizeMisc: TSpinEdit
          Tag = 7
          Left = 384
          Top = 197
          Width = 41
          Height = 22
          MaxValue = 48
          MinValue = 2
          TabOrder = 15
          Value = 6
          OnChange = labelsizeChanged
        end
        object labelsizeConst: TSpinEdit
          Tag = 6
          Left = 384
          Top = 173
          Width = 41
          Height = 22
          MaxValue = 48
          MinValue = 2
          TabOrder = 16
          Value = 6
          OnChange = labelsizeChanged
        end
        object labelsizeSol: TSpinEdit
          Tag = 5
          Left = 384
          Top = 149
          Width = 41
          Height = 22
          MaxValue = 48
          MinValue = 2
          TabOrder = 17
          Value = 6
          OnChange = labelsizeChanged
        end
        object labelsizeNeb: TSpinEdit
          Tag = 4
          Left = 384
          Top = 125
          Width = 41
          Height = 22
          MaxValue = 48
          MinValue = 2
          TabOrder = 18
          Value = 6
          OnChange = labelsizeChanged
        end
        object labelsizeMult: TSpinEdit
          Tag = 3
          Left = 384
          Top = 101
          Width = 41
          Height = 22
          MaxValue = 48
          MinValue = 2
          TabOrder = 19
          Value = 6
          OnChange = labelsizeChanged
        end
        object labelsizeVar: TSpinEdit
          Tag = 2
          Left = 384
          Top = 77
          Width = 41
          Height = 22
          MaxValue = 48
          MinValue = 2
          TabOrder = 20
          Value = 6
          OnChange = labelsizeChanged
        end
      end
    end
    object t_font: TTabSheet
      Caption = 't_font'
      ImageIndex = 1
      TabVisible = False
      object Bevel10: TBevel
        Left = 8
        Top = 32
        Width = 393
        Height = 329
        Shape = bsFrame
      end
      object Label51: TLabel
        Left = 0
        Top = 0
        Width = 62
        Height = 13
        Caption = 'Fonts Setting'
      end
      object Label121: TLabel
        Left = 16
        Top = 74
        Width = 78
        Height = 13
        Caption = 'Coordinates Grid'
      end
      object Label122: TLabel
        Left = 16
        Top = 40
        Width = 31
        Height = 13
        Caption = 'Object'
      end
      object Label123: TLabel
        Left = 16
        Top = 115
        Width = 31
        Height = 13
        Caption = 'Labels'
      end
      object Label124: TLabel
        Left = 16
        Top = 157
        Width = 36
        Height = 13
        Caption = 'Legend'
      end
      object Label125: TLabel
        Left = 16
        Top = 198
        Width = 107
        Height = 13
        Caption = 'Screen and Status Bar'
      end
      object Label126: TLabel
        Left = 16
        Top = 240
        Width = 46
        Height = 13
        Caption = 'Object list'
      end
      object Label127: TLabel
        Left = 16
        Top = 282
        Width = 65
        Height = 13
        Caption = 'Printer legend'
      end
      object Label128: TLabel
        Left = 192
        Top = 40
        Width = 21
        Height = 13
        Caption = 'Font'
      end
      object Label129: TLabel
        Left = 344
        Top = 40
        Width = 31
        Height = 13
        Caption = 'Modify'
      end
      object SpeedButton1: TSpeedButton
        Tag = 1
        Left = 352
        Top = 69
        Width = 23
        Height = 22
        Glyph.Data = {
          76060000424D7606000000000000360000002800000014000000140000000100
          20000000000040060000000000000000000000000000000000000000003F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F000000BFBFBF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFFF00FFBF00007F3FFF00FF00BFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F0000007F000000BFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF00007FBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00007FBFBFBFBF00FF00FFBFBFBF
          BF3FBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F000000BFBFBF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF00007FBF00007F0000007F3FBFBFBF00BFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F0000007F0000007F000000BFBFBF00BFBFBFBF7F007FBF7F00
          7F00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBF00007FBFBFBFBF00FF00FFBFBFBF
          BF3FBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFFF00FFBF7F007F3FBFBFBF00BFBFBFBFBFBF
          BFBF00007FBFBFBFBF00BFBFBFBFFF00FFBFBFBFBF3FBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF7F007FBFBFBFBF00BFBFBFBFFF00FFBF00007F3F00007F0000007F3F0000
          7F00BFBFBF3FBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBFBFBFBF00BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F00
          7FBF7F007F3F7F007F00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBFBFBFBF00BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF7F007FBFFF00FF00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBF7F007F3FBFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF0000003F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFFFF3F0000
          00BFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF000000FF000000FF00000000000000FFFF
          FF00000000BFFFFFFF00FF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00
          FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00
          FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3F}
        OnClick = SelectFontClick
      end
      object SpeedButton2: TSpeedButton
        Tag = 2
        Left = 352
        Top = 110
        Width = 23
        Height = 22
        Glyph.Data = {
          76060000424D7606000000000000360000002800000014000000140000000100
          20000000000040060000000000000000000000000000000000000000003F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F000000BFBFBF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFFF00FFBF00007F3FFF00FF00BFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F0000007F000000BFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF00007FBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00007FBFBFBFBF00FF00FFBFBFBF
          BF3FBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F000000BFBFBF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF00007FBF00007F0000007F3FBFBFBF00BFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F0000007F0000007F000000BFBFBF00BFBFBFBF7F007FBF7F00
          7F00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBF00007FBFBFBFBF00FF00FFBFBFBF
          BF3FBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFFF00FFBF7F007F3FBFBFBF00BFBFBFBFBFBF
          BFBF00007FBFBFBFBF00BFBFBFBFFF00FFBFBFBFBF3FBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF7F007FBFBFBFBF00BFBFBFBFFF00FFBF00007F3F00007F0000007F3F0000
          7F00BFBFBF3FBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBFBFBFBF00BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F00
          7FBF7F007F3F7F007F00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBFBFBFBF00BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF7F007FBFFF00FF00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBF7F007F3FBFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF0000003F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFFFF3F0000
          00BFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF000000FF000000FF00000000000000FFFF
          FF00000000BFFFFFFF00FF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00
          FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00
          FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3F}
        OnClick = SelectFontClick
      end
      object SpeedButton3: TSpeedButton
        Tag = 3
        Left = 352
        Top = 152
        Width = 23
        Height = 22
        Glyph.Data = {
          76060000424D7606000000000000360000002800000014000000140000000100
          20000000000040060000000000000000000000000000000000000000003F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F000000BFBFBF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFFF00FFBF00007F3FFF00FF00BFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F0000007F000000BFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF00007FBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00007FBFBFBFBF00FF00FFBFBFBF
          BF3FBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F000000BFBFBF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF00007FBF00007F0000007F3FBFBFBF00BFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F0000007F0000007F000000BFBFBF00BFBFBFBF7F007FBF7F00
          7F00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBF00007FBFBFBFBF00FF00FFBFBFBF
          BF3FBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFFF00FFBF7F007F3FBFBFBF00BFBFBFBFBFBF
          BFBF00007FBFBFBFBF00BFBFBFBFFF00FFBFBFBFBF3FBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF7F007FBFBFBFBF00BFBFBFBFFF00FFBF00007F3F00007F0000007F3F0000
          7F00BFBFBF3FBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBFBFBFBF00BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F00
          7FBF7F007F3F7F007F00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBFBFBFBF00BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF7F007FBFFF00FF00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBF7F007F3FBFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF0000003F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFFFF3F0000
          00BFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF000000FF000000FF00000000000000FFFF
          FF00000000BFFFFFFF00FF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00
          FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00
          FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3F}
        OnClick = SelectFontClick
      end
      object SpeedButton4: TSpeedButton
        Tag = 4
        Left = 352
        Top = 193
        Width = 23
        Height = 22
        Glyph.Data = {
          76060000424D7606000000000000360000002800000014000000140000000100
          20000000000040060000000000000000000000000000000000000000003F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F000000BFBFBF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFFF00FFBF00007F3FFF00FF00BFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F0000007F000000BFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF00007FBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00007FBFBFBFBF00FF00FFBFBFBF
          BF3FBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F000000BFBFBF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF00007FBF00007F0000007F3FBFBFBF00BFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F0000007F0000007F000000BFBFBF00BFBFBFBF7F007FBF7F00
          7F00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBF00007FBFBFBFBF00FF00FFBFBFBF
          BF3FBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFFF00FFBF7F007F3FBFBFBF00BFBFBFBFBFBF
          BFBF00007FBFBFBFBF00BFBFBFBFFF00FFBFBFBFBF3FBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF7F007FBFBFBFBF00BFBFBFBFFF00FFBF00007F3F00007F0000007F3F0000
          7F00BFBFBF3FBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBFBFBFBF00BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F00
          7FBF7F007F3F7F007F00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBFBFBFBF00BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF7F007FBFFF00FF00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBF7F007F3FBFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF0000003F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFFFF3F0000
          00BFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF000000FF000000FF00000000000000FFFF
          FF00000000BFFFFFFF00FF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00
          FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00
          FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3F}
        OnClick = SelectFontClick
      end
      object SpeedButton5: TSpeedButton
        Tag = 5
        Left = 352
        Top = 235
        Width = 23
        Height = 22
        Glyph.Data = {
          76060000424D7606000000000000360000002800000014000000140000000100
          20000000000040060000000000000000000000000000000000000000003F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F000000BFBFBF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFFF00FFBF00007F3FFF00FF00BFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F0000007F000000BFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF00007FBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00007FBFBFBFBF00FF00FFBFBFBF
          BF3FBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F000000BFBFBF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF00007FBF00007F0000007F3FBFBFBF00BFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F0000007F0000007F000000BFBFBF00BFBFBFBF7F007FBF7F00
          7F00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBF00007FBFBFBFBF00FF00FFBFBFBF
          BF3FBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFFF00FFBF7F007F3FBFBFBF00BFBFBFBFBFBF
          BFBF00007FBFBFBFBF00BFBFBFBFFF00FFBFBFBFBF3FBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF7F007FBFBFBFBF00BFBFBFBFFF00FFBF00007F3F00007F0000007F3F0000
          7F00BFBFBF3FBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBFBFBFBF00BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F00
          7FBF7F007F3F7F007F00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBFBFBFBF00BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF7F007FBFFF00FF00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBF7F007F3FBFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF0000003F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFFFF3F0000
          00BFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF000000FF000000FF00000000000000FFFF
          FF00000000BFFFFFFF00FF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00
          FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00
          FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3F}
        OnClick = SelectFontClick
      end
      object SpeedButton6: TSpeedButton
        Tag = 6
        Left = 352
        Top = 277
        Width = 23
        Height = 22
        Glyph.Data = {
          76060000424D7606000000000000360000002800000014000000140000000100
          20000000000040060000000000000000000000000000000000000000003F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F000000BFBFBF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFFF00FFBF00007F3FFF00FF00BFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F0000007F000000BFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF00007FBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00007FBFBFBFBF00FF00FFBFBFBF
          BF3FBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F000000BFBFBF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF00007FBF00007F0000007F3FBFBFBF00BFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F0000007F0000007F000000BFBFBF00BFBFBFBF7F007FBF7F00
          7F00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBF00007FBFBFBFBF00FF00FFBFBFBF
          BF3FBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFFF00FFBF7F007F3FBFBFBF00BFBFBFBFBFBF
          BFBF00007FBFBFBFBF00BFBFBFBFFF00FFBFBFBFBF3FBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF7F007FBFBFBFBF00BFBFBFBFFF00FFBF00007F3F00007F0000007F3F0000
          7F00BFBFBF3FBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBFBFBFBF00BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F00
          7FBF7F007F3F7F007F00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBFBFBFBF00BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF7F007FBFFF00FF00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBF7F007F3FBFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF0000003F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFFFF3F0000
          00BFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF000000FF000000FF00000000000000FFFF
          FF00000000BFFFFFFF00FF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00
          FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00
          FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3F}
        OnClick = SelectFontClick
      end
      object SpeedButton7: TSpeedButton
        Tag = 7
        Left = 352
        Top = 317
        Width = 23
        Height = 22
        Glyph.Data = {
          76060000424D7606000000000000360000002800000014000000140000000100
          20000000000040060000000000000000000000000000000000000000003F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F000000BFBFBF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFFF00FFBF00007F3FFF00FF00BFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F0000007F000000BFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF00007FBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00007FBFBFBFBF00FF00FFBFBFBF
          BF3FBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBF7F0000BF7F000000BFBFBF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF00007FBF00007F0000007F3FBFBFBF00BFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBF7F0000BF7F0000007F0000007F000000BFBFBF00BFBFBFBF7F007FBF7F00
          7F00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBF00007FBFBFBFBF00FF00FFBFBFBF
          BF3FBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFFF00FFBF7F007F3FBFBFBF00BFBFBFBFBFBF
          BFBF00007FBFBFBFBF00BFBFBFBFFF00FFBFBFBFBF3FBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF7F007FBFBFBFBF00BFBFBFBFFF00FFBF00007F3F00007F0000007F3F0000
          7F00BFBFBF3FBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBFBFBFBF00BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F00
          7FBF7F007F3F7F007F00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBFBFBFBF00BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF7F007FBFFF00FF00BFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F007FBF7F007F3FBFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF0000003F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFFFF3F0000
          00BFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF000000FF000000FF00000000000000FFFF
          FF00000000BFFFFFFF00FF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00
          FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00
          FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3FFF00FF3F}
        OnClick = SelectFontClick
      end
      object Label235: TLabel
        Left = 16
        Top = 328
        Width = 64
        Height = 13
        Caption = 'Greek symbol'
      end
      object gridfont: TEdit
        Left = 184
        Top = 65
        Width = 160
        Height = 30
        TabStop = False
        AutoSize = False
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 0
      end
      object labelfont: TEdit
        Left = 184
        Top = 106
        Width = 160
        Height = 30
        TabStop = False
        AutoSize = False
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 1
      end
      object legendfont: TEdit
        Left = 184
        Top = 148
        Width = 160
        Height = 30
        TabStop = False
        AutoSize = False
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 2
      end
      object statusfont: TEdit
        Left = 184
        Top = 189
        Width = 160
        Height = 30
        TabStop = False
        AutoSize = False
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 3
      end
      object listfont: TEdit
        Left = 184
        Top = 231
        Width = 160
        Height = 30
        TabStop = False
        AutoSize = False
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 4
      end
      object prtfont: TEdit
        Left = 184
        Top = 273
        Width = 160
        Height = 30
        TabStop = False
        AutoSize = False
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 5
      end
      object Button1: TButton
        Left = 184
        Top = 376
        Width = 75
        Height = 25
        Caption = 'Default'
        TabOrder = 6
        OnClick = DefaultFontClick
      end
      object symbfont: TEdit
        Left = 184
        Top = 313
        Width = 160
        Height = 30
        TabStop = False
        AutoSize = False
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 7
      end
    end
    object t_circle: TTabSheet
      Caption = 't_circle'
      ImageIndex = 7
      TabVisible = False
      object Label307: TLabel
        Left = 80
        Top = 8
        Width = 145
        Height = 13
        Caption = 'Finder circle (Eyepiece/Telrad)'
      end
      object cb1: TCheckBox
        Tag = 1
        Left = 24
        Top = 76
        Width = 57
        Height = 17
        Caption = 'No. 1'
        TabOrder = 0
        OnClick = cbClick
      end
      object cb2: TCheckBox
        Tag = 2
        Left = 24
        Top = 106
        Width = 57
        Height = 17
        Caption = 'No. 2'
        TabOrder = 1
        OnClick = cbClick
      end
      object cb3: TCheckBox
        Tag = 3
        Left = 24
        Top = 137
        Width = 57
        Height = 17
        Caption = 'No. 3'
        TabOrder = 2
        OnClick = cbClick
      end
      object cb4: TCheckBox
        Tag = 4
        Left = 24
        Top = 168
        Width = 57
        Height = 17
        Caption = 'No. 4'
        TabOrder = 3
        OnClick = cbClick
      end
      object cb5: TCheckBox
        Tag = 5
        Left = 24
        Top = 199
        Width = 57
        Height = 17
        Caption = 'No. 5'
        TabOrder = 4
        OnClick = cbClick
      end
      object cb6: TCheckBox
        Tag = 6
        Left = 24
        Top = 230
        Width = 57
        Height = 17
        Caption = 'No. 6'
        TabOrder = 5
        OnClick = cbClick
      end
      object cb7: TCheckBox
        Tag = 7
        Left = 24
        Top = 261
        Width = 57
        Height = 17
        Caption = 'No. 7'
        TabOrder = 6
        OnClick = cbClick
      end
      object cb8: TCheckBox
        Tag = 8
        Left = 24
        Top = 292
        Width = 57
        Height = 17
        Caption = 'No. 8'
        TabOrder = 7
        OnClick = cbClick
      end
      object cb9: TCheckBox
        Tag = 9
        Left = 24
        Top = 323
        Width = 57
        Height = 17
        Caption = 'No. 9'
        TabOrder = 8
        OnClick = cbClick
      end
      object cb10: TCheckBox
        Tag = 10
        Left = 24
        Top = 354
        Width = 57
        Height = 17
        Caption = 'No. 10'
        TabOrder = 9
        OnClick = cbClick
      end
      object Circlegrid: TStringGrid
        Left = 80
        Top = 36
        Width = 380
        Height = 349
        ColCount = 4
        DefaultColWidth = 70
        DefaultRowHeight = 30
        FixedCols = 0
        RowCount = 11
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goEditing, goAlwaysShowEditor]
        ScrollBars = ssNone
        TabOrder = 10
        OnSetEditText = CirclegridSetEditText
      end
      object CenterMark1: TCheckBox
        Left = 24
        Top = 392
        Width = 273
        Height = 30
        Caption = 'Mark the chart center '
        TabOrder = 11
        OnClick = CenterMark1Click
      end
    end
    object t_rectangle: TTabSheet
      Caption = 't_rectangle'
      ImageIndex = 8
      TabVisible = False
      object Label308: TLabel
        Left = 80
        Top = 8
        Width = 154
        Height = 13
        Caption = 'Finder rectangle (CCD / Camera)'
      end
      object rb1: TCheckBox
        Tag = 1
        Left = 24
        Top = 74
        Width = 49
        Height = 17
        Caption = 'No. 1'
        TabOrder = 0
        OnClick = rbClick
      end
      object rb2: TCheckBox
        Tag = 2
        Left = 24
        Top = 105
        Width = 49
        Height = 17
        Caption = 'No. 2'
        TabOrder = 1
        OnClick = rbClick
      end
      object rb3: TCheckBox
        Tag = 3
        Left = 24
        Top = 136
        Width = 49
        Height = 17
        Caption = 'No. 3'
        TabOrder = 2
        OnClick = rbClick
      end
      object rb4: TCheckBox
        Tag = 4
        Left = 24
        Top = 167
        Width = 49
        Height = 17
        Caption = 'No. 4'
        TabOrder = 3
        OnClick = rbClick
      end
      object rb5: TCheckBox
        Tag = 5
        Left = 24
        Top = 198
        Width = 49
        Height = 17
        Caption = 'No. 5'
        TabOrder = 4
        OnClick = rbClick
      end
      object rb6: TCheckBox
        Tag = 6
        Left = 24
        Top = 230
        Width = 49
        Height = 17
        Caption = 'No. 6'
        TabOrder = 5
        OnClick = rbClick
      end
      object rb7: TCheckBox
        Tag = 7
        Left = 24
        Top = 261
        Width = 49
        Height = 17
        Caption = 'No. 7'
        TabOrder = 6
        OnClick = rbClick
      end
      object rb8: TCheckBox
        Tag = 8
        Left = 24
        Top = 292
        Width = 49
        Height = 17
        Caption = 'No. 8'
        TabOrder = 7
        OnClick = rbClick
      end
      object rb9: TCheckBox
        Tag = 9
        Left = 24
        Top = 323
        Width = 49
        Height = 17
        Caption = 'No. 9'
        TabOrder = 8
        OnClick = rbClick
      end
      object rb10: TCheckBox
        Tag = 10
        Left = 24
        Top = 355
        Width = 49
        Height = 17
        Caption = 'No10'
        TabOrder = 9
        OnClick = rbClick
      end
      object RectangleGrid: TStringGrid
        Left = 80
        Top = 36
        Width = 380
        Height = 349
        DefaultColWidth = 60
        DefaultRowHeight = 30
        FixedCols = 0
        RowCount = 11
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goEditing, goAlwaysShowEditor]
        ScrollBars = ssNone
        TabOrder = 10
        OnSetEditText = RectangleGridSetEditText
      end
      object CenterMark2: TCheckBox
        Left = 24
        Top = 392
        Width = 273
        Height = 30
        Caption = 'Mark the chart center '
        TabOrder = 11
        OnClick = CenterMark1Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 392
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 424
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    Left = 456
  end
end
