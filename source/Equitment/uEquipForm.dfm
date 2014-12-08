inherited EquipForm: TEquipForm
  Caption = 'EquipForm'
  ClientHeight = 617
  OnCreate = FormCreate
  ExplicitWidth = 1256
  ExplicitHeight = 655
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPanel11: TRzPanel
    Height = 617
    ExplicitHeight = 617
    inherited RzToolbar1: TRzToolbar
      ToolbarControls = (
        RzBtnLookup
        RzSpacer2
        RzBtnCount
        btnClearSelection
        btnExportoOA
        RzToolButton1
        btnExportExcel)
      inherited RzBtnLookup: TRzToolButton
        Width = 79
        Caption = #32479#35745#26597#35810
        OnClick = RzBtnLookupClick
        ExplicitWidth = 79
      end
      inherited RzBtnCount: TRzToolButton
        Left = 87
        ExplicitLeft = 87
      end
      inherited RzSpacer2: TRzSpacer
        Left = 79
        ExplicitLeft = 79
      end
      inherited btnClearSelection: TRzToolButton
        Left = 135
        ExplicitLeft = 135
      end
      inherited btnExportExcel: TRzToolButton
        Left = 371
        ExplicitLeft = 371
      end
      inherited btnExportoOA: TRzToolButton
        Left = 219
        Visible = False
        ExplicitLeft = 219
      end
      object RzToolButton1: TRzToolButton
        Left = 295
        Top = -1
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
        Caption = #23548#20837#35013#22791
        OnClick = RzToolButton1Click
      end
    end
    inherited cxGrid1: TcxGrid
      Top = 265
      Height = 333
      ExplicitTop = 265
      ExplicitHeight = 350
    end
    object rzpnl2: TRzPanel
      Left = 2
      Top = 169
      Width = 1236
      Height = 96
      Align = alTop
      TabOrder = 2
      object rzgrpbx1: TRzGroupBox
        Left = 2
        Top = 2
        Width = 1232
        Height = 92
        Align = alClient
        Caption = #26597#35810#26465#20214
        TabOrder = 0
        object Label3: TLabel
          Left = 30
          Top = 31
          Width = 48
          Height = 13
          Caption = #36164#20135#20998#31867
        end
        object btnSave: TButton
          Left = 47
          Top = 59
          Width = 114
          Height = 25
          Caption = #25152#26377#20998#31867
          TabOrder = 0
        end
        object Button2: TButton
          Left = 199
          Top = 59
          Width = 114
          Height = 25
          Caption = #26597#35810#25152#36873#20998#31867
          TabOrder = 1
        end
        object Button3: TButton
          Left = 335
          Top = 59
          Width = 114
          Height = 25
          Caption = #36861#21152#25152#36873#20998#31867
          TabOrder = 2
        end
        object edtBelongTo2: TComboBox
          Left = 84
          Top = 32
          Width = 441
          Height = 21
          TabOrder = 3
          Items.Strings = (
            '19.'#35686#29992#35013#22791#21253' '
            '18.'#35686#29992#27700#22774' '
            '17.'#38450#21106#25163#22871' '
            '16.'#22810#21151#33021#33136#24102' '
            '15.'#24613#25937#21253' '
            '14.'#24378#20809#25163#30005' '
            '13.'#20652#27882#21943#23556#22120' '
            '12.'#25163#38096' '
            '11.'#35686#26829
            '23.'#38450#26292#26381' '
            '22.'#35686#25106#24102' '
            '21.'#38450#26292#22836#30420' '
            '20.'#38450#21050#26381)
        end
      end
    end
    object RzPanel1: TRzPanel
      Left = 2
      Top = 29
      Width = 1236
      Height = 140
      Align = alTop
      TabOrder = 3
      object RzGroupBox1: TRzGroupBox
        Left = 2
        Top = 2
        Width = 1232
        Height = 136
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
        object Button1: TButton
          Left = 534
          Top = 18
          Width = 73
          Height = 25
          Caption = #20837#24211
          TabOrder = 5
          OnClick = Button1Click
        end
        object edtMoney: TEdit
          Left = 391
          Top = 47
          Width = 137
          Height = 21
          NumbersOnly = True
          TabOrder = 2
        end
        object edtBelongTo: TComboBox
          Left = 86
          Top = 105
          Width = 441
          Height = 21
          TabOrder = 6
          Items.Strings = (
            '19.'#35686#29992#35013#22791#21253' '
            '18.'#35686#29992#27700#22774' '
            '17.'#38450#21106#25163#22871' '
            '16.'#22810#21151#33021#33136#24102' '
            '15.'#24613#25937#21253' '
            '14.'#24378#20809#25163#30005' '
            '13.'#20652#27882#21943#23556#22120' '
            '12.'#25163#38096' '
            '11.'#35686#26829
            '23.'#38450#26292#26381' '
            '22.'#35686#25106#24102' '
            '21.'#38450#26292#22836#30420' '
            '20.'#38450#21050#26381)
        end
      end
    end
    object ProgressBar1: TProgressBar
      Left = 2
      Top = 598
      Width = 1236
      Height = 17
      Align = alBottom
      TabOrder = 4
      ExplicitLeft = 136
      ExplicitTop = 568
      ExplicitWidth = 225
    end
  end
end
