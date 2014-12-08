object EquipmentForm: TEquipmentForm
  Left = 0
  Top = 0
  Align = alClient
  Caption = #20010#20154#35013#22791
  ClientHeight = 618
  ClientWidth = 813
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rzpnl3: TRzPanel
    Left = 0
    Top = 0
    Width = 813
    Height = 618
    Align = alClient
    TabOrder = 0
    object RzToolbar1: TRzToolbar
      Left = 2
      Top = 2
      Width = 809
      Height = 27
      AutoResize = False
      AutoStyle = False
      Images = DataModule2.ImageListForBtns
      Margin = 0
      TopMargin = 0
      RowHeight = 22
      ShowDivider = False
      TextOptions = ttoCustom
      WrapControls = False
      AutoSize = True
      BorderInner = fsNone
      BorderOuter = fsPopup
      BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
      BorderWidth = 0
      Color = clGradientInactiveCaption
      GradientColorStyle = gcsMSOffice
      TabOrder = 0
      Visible = False
      VisualStyle = vsGradient
      ToolbarControls = (
        RzSpacer1
        RzBtnLookup
        RzSpacer2
        RzBtnCount
        RzToolButton1
        RzToolButton2
        RzToolButton3)
      object RzBtnLookup: TRzToolButton
        Left = 8
        Top = 1
        Width = 149
        GradientColorStyle = gcsCustom
        ImageIndex = 251
        Images = DataModule2.ImageListForBtns
        ShowCaption = True
        UseToolbarButtonLayout = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsClassic
        Caption = #33719#21462#20010#20154#35013#22791#25968#25454
      end
      object RzSpacer1: TRzSpacer
        Left = 0
        Top = 1
        Grooved = True
      end
      object RzBtnCount: TRzToolButton
        Left = 165
        Top = 1
        Width = 48
        GradientColorStyle = gcsCustom
        ImageIndex = 181
        Images = DataModule2.ImageListForBtns
        ShowCaption = True
        UseToolbarButtonLayout = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsClassic
        Caption = #35745#25968
        Visible = False
      end
      object RzSpacer2: TRzSpacer
        Left = 157
        Top = 1
        Grooved = True
      end
      object RzToolButton1: TRzToolButton
        Left = 213
        Top = 1
        Width = 84
        Alignment = taLeftJustify
        GradientColorStyle = gcsMSOffice
        ImageIndex = 137
        Images = DataModule2.ImageListForBtns
        ShowCaption = True
        UseToolbarButtonLayout = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsGradient
        Caption = #21462#28040#36873#20013
      end
      object RzToolButton2: TRzToolButton
        Left = 297
        Top = 1
        Width = 96
        Alignment = taLeftJustify
        GradientColorStyle = gcsMSOffice
        ImageIndex = 184
        Images = DataModule2.ImageListForBtns
        ShowCaption = True
        UseToolbarButtonLayout = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsGradient
        Caption = #23548#20986'EXCEL'
      end
      object RzToolButton3: TRzToolButton
        Left = 393
        Top = 1
        Width = 76
        Alignment = taLeftJustify
        GradientColorStyle = gcsMSOffice
        ImageIndex = 235
        Images = DataModule2.ImageListForBtns
        ShowCaption = True
        UseToolbarButtonLayout = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsGradient
        Caption = #23548#20837'OA'
        Visible = False
      end
    end
    object Progressbar1: TProgressBar
      Left = 2
      Top = 599
      Width = 809
      Height = 17
      Align = alBottom
      TabOrder = 1
    end
    object rzpnl2: TRzPanel
      Left = 2
      Top = 29
      Width = 809
      Height = 570
      Align = alClient
      TabOrder = 2
      object rzgrpbx1: TRzGroupBox
        Left = 2
        Top = 2
        Width = 805
        Height = 566
        Align = alClient
        Caption = #26032#22686#36164#20135#24211#23384
        TabOrder = 0
        object lbl1: TLabel
          Left = 30
          Top = 23
          Width = 48
          Height = 13
          Caption = #35013#22791#21517#31216
        end
        object Label1: TLabel
          Left = 29
          Top = 48
          Width = 48
          Height = 13
          Caption = #35013#22791#22411#21495
        end
        object lbl2: TLabel
          Left = 30
          Top = 77
          Width = 48
          Height = 13
          Caption = #37319#36141#26085#26399
        end
        object lbl3: TLabel
          Left = 361
          Top = 78
          Width = 24
          Height = 13
          Caption = #25968#37327
        end
        object lbl4: TLabel
          Left = 361
          Top = 49
          Width = 24
          Height = 13
          Caption = #20215#20540
        end
        object Label2: TLabel
          Left = 30
          Top = 107
          Width = 48
          Height = 13
          Caption = #36164#20135#20998#31867
        end
        object Label3: TLabel
          Left = 170
          Top = 107
          Width = 72
          Height = 13
          Caption = #36164#20135#20998#31867#21517#31216
        end
        object Label4: TLabel
          Left = 29
          Top = 129
          Width = 281
          Height = 18
          Caption = '('#36164#20135#20998#31867#20195#30721#21644#21517#31216#24517#39035#21644'OA'#31995#32479#19968#33268#65289
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object edtName: TEdit
          Left = 86
          Top = 20
          Width = 442
          Height = 21
          TabOrder = 0
        end
        object edtType: TEdit
          Left = 85
          Top = 47
          Width = 252
          Height = 21
          TabOrder = 1
        end
        object edtBuyDate: TRzDateTimePicker
          Left = 86
          Top = 74
          Width = 251
          Height = 25
          Date = 41974.000000000000000000
          Time = 41974.000000000000000000
          TabOrder = 3
        end
        object edtNumber: TEdit
          Left = 391
          Top = 74
          Width = 137
          Height = 21
          MaxLength = 3
          NumbersOnly = True
          TabOrder = 4
        end
        object btnSave: TButton
          Left = 534
          Top = 18
          Width = 73
          Height = 25
          Caption = #20837#24211
          TabOrder = 5
          OnClick = btnSaveClick
        end
        object edtMoney: TEdit
          Left = 391
          Top = 47
          Width = 137
          Height = 21
          NumbersOnly = True
          TabOrder = 2
        end
        object edtBelongTo: TEdit
          Left = 85
          Top = 105
          Width = 78
          Height = 21
          MaxLength = 3
          NumbersOnly = True
          TabOrder = 6
        end
        object edtBlongToName: TEdit
          Left = 247
          Top = 105
          Width = 281
          Height = 21
          MaxLength = 1000
          TabOrder = 7
        end
      end
    end
  end
end
