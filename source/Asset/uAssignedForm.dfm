inherited AssignedForm: TAssignedForm
  Caption = 'AssignedForm'
  ExplicitLeft = -274
  ExplicitTop = -14
  ExplicitWidth = 1256
  ExplicitHeight = 627
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPanel11: TRzPanel
    Height = 476
    ExplicitHeight = 476
    inherited RzToolbar1: TRzToolbar
      Caption = 'GFwerwer'
      ToolbarControls = (
        btnRefresh
        RzBtnLookup
        RzSpacer2
        RzBtnCount
        btnClearSelection
        rzspcr3
        btnExportExcel
        btnExportoOA
        btnCompareWithOA)
      inherited RzBtnLookup: TRzToolButton
        Left = 100
        Top = 1
        Visible = False
        ExplicitLeft = 100
        ExplicitTop = 1
      end
      inherited RzBtnCount: TRzToolButton
        Left = 157
        Top = 1
        Visible = True
        ExplicitLeft = 157
        ExplicitTop = 1
      end
      inherited RzSpacer2: TRzSpacer
        Left = 149
        Top = 1
        ExplicitLeft = 149
        ExplicitTop = 1
      end
      inherited btnClearSelection: TRzToolButton
        Left = 205
        Top = 1
        Width = 82
        Caption = #21462#28040#36873' '#20013
        Visible = True
        ExplicitLeft = 205
        ExplicitTop = 1
        ExplicitWidth = 82
      end
      inherited btnExportExcel: TRzToolButton
        Left = 295
        Top = 1
        Width = 86
        ExplicitLeft = 295
        ExplicitTop = 1
        ExplicitWidth = 86
      end
      inherited btnExportoOA: TRzToolButton
        Left = 381
        Top = 1
        Width = 72
        ExplicitLeft = 381
        ExplicitTop = 1
        ExplicitWidth = 72
      end
      object rzspcr3: TRzSpacer
        Left = 287
        Top = 1
        Grooved = True
      end
      object btnCompareWithOA: TRzToolButton
        Left = 453
        Top = 1
        Width = 112
        Alignment = taLeftJustify
        GradientColorStyle = gcsMSOffice
        ImageIndex = 63
        Images = DataModule2.ImageListForBtns
        ShowCaption = True
        UseToolbarButtonLayout = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsGradient
        Caption = #19982'OA'#27604#36739#25968#25454
        OnClick = btnCompareWithOAClick
      end
      object btnRefresh: TRzToolButton
        Left = 0
        Top = 1
        Width = 100
        GradientColorStyle = gcsMSOffice
        ImageIndex = 8
        ShowCaption = True
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsClassic
        Caption = #21047#26032#36164#20135#25968#25454
        OnClick = btnRefreshClick
      end
    end
    inherited cxGrid1: TcxGrid
      Height = 428
      DragMode = dmAutomatic
      ExplicitHeight = 428
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        object cxGrid1DBTableView1classname: TcxGridDBColumn
          DataBinding.FieldName = 'classname'
          Width = 132
        end
        object cxGrid1DBTableView1kpbh: TcxGridDBColumn
          DataBinding.FieldName = 'kpbh'
          Width = 87
        end
        object cxGrid1DBTableView1zcmc: TcxGridDBColumn
          DataBinding.FieldName = 'zcmc'
        end
        object cxGrid1DBTableView1syzt: TcxGridDBColumn
          DataBinding.FieldName = 'syzt'
        end
        object cxGrid1DBTableView1pp: TcxGridDBColumn
          DataBinding.FieldName = 'pp'
        end
        object cxGrid1DBTableView1kjpzh: TcxGridDBColumn
          DataBinding.FieldName = 'kjpzh'
        end
        object cxGrid1DBTableView1syr: TcxGridDBColumn
          DataBinding.FieldName = 'syr'
        end
        object cxGrid1DBTableView1remark2: TcxGridDBColumn
          DataBinding.FieldName = 'remark2'
        end
        object cxGrid1DBTableView1bz: TcxGridDBColumn
          DataBinding.FieldName = 'bz'
        end
        object cxGrid1DBTableView1classcode: TcxGridDBColumn
          DataBinding.FieldName = 'classcode'
          Width = 102
        end
        object cxGrid1DBTableView1cfdd: TcxGridDBColumn
          DataBinding.FieldName = 'cfdd'
        end
        object cxGrid1DBTableView1zcfldm: TcxGridDBColumn
          DataBinding.FieldName = 'zcfldm'
          Width = 128
        end
        object cxGrid1DBTableView1qdrq: TcxGridDBColumn
          DataBinding.FieldName = 'qdrq'
        end
        object cxGrid1DBTableView1rzrq: TcxGridDBColumn
          DataBinding.FieldName = 'rzrq'
        end
        object cxGrid1DBTableView1jz: TcxGridDBColumn
          DataBinding.FieldName = 'jz'
          Width = 83
        end
        object cxGrid1DBTableView1ggxh: TcxGridDBColumn
          DataBinding.FieldName = 'ggxh'
        end
        object cxGrid1DBTableView1toOAFlag: TcxGridDBColumn
          DataBinding.FieldName = 'toOAFlag'
          Width = 106
        end
        object cxGrid1DBTableView1Errorcode: TcxGridDBColumn
          DataBinding.FieldName = 'Errorcode'
          Width = 172
        end
      end
    end
    object Progressbar1: TProgressBar
      Left = 2
      Top = 457
      Width = 1236
      Height = 17
      Align = alBottom
      TabOrder = 2
    end
  end
  object rzpnl1: TRzPanel [1]
    Left = 0
    Top = 476
    Width = 1240
    Height = 113
    Align = alBottom
    TabOrder = 1
    Visible = False
  end
  inherited DataSource1: TDataSource
    Left = 224
    Top = 496
  end
  inherited cxstylrpstry1: TcxStyleRepository
    Left = 600
    Top = 504
  end
  object dsMoveToGroup: TDataSource
    Left = 416
    Top = 496
  end
  object cdsMoveToGroup: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 320
    Top = 496
  end
  object cdsMoveToDetail: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 496
  end
end
