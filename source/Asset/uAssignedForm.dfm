inherited AssignedForm: TAssignedForm
  Caption = 'AssignedForm'
  ExplicitWidth = 1248
  ExplicitHeight = 623
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
        Visible = False
        ExplicitLeft = 100
      end
      inherited RzBtnCount: TRzToolButton
        Left = 157
        Visible = True
        ExplicitLeft = 157
      end
      inherited RzSpacer2: TRzSpacer
        Left = 149
        ExplicitLeft = 149
      end
      inherited btnClearSelection: TRzToolButton
        Left = 205
        Width = 82
        Caption = #21462#28040#36873' '#20013
        Visible = True
        ExplicitLeft = 205
        ExplicitWidth = 82
      end
      inherited btnExportExcel: TRzToolButton
        Left = 295
        Width = 86
        ExplicitLeft = 295
        ExplicitWidth = 86
      end
      inherited btnExportoOA: TRzToolButton
        Left = 381
        Width = 72
        ExplicitLeft = 381
        ExplicitWidth = 72
      end
      object rzspcr3: TRzSpacer
        Left = 287
        Top = -1
        Grooved = True
      end
      object btnCompareWithOA: TRzToolButton
        Left = 453
        Top = -1
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
        Top = -1
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
