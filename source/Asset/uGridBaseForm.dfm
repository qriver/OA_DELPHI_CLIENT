object GridBaseForm: TGridBaseForm
  Left = 0
  Top = 0
  Caption = 'GridBaseForm'
  ClientHeight = 589
  ClientWidth = 1240
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel11: TRzPanel
    Left = 0
    Top = 0
    Width = 1240
    Height = 589
    Align = alClient
    TabOrder = 0
    object RzToolbar1: TRzToolbar
      Left = 2
      Top = 2
      Width = 1236
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
      VisualStyle = vsGradient
      ToolbarControls = (
        RzBtnLookup
        RzSpacer2
        RzBtnCount
        btnClearSelection
        btnExportExcel
        btnExportoOA)
      object RzBtnLookup: TRzToolButton
        Left = 0
        Top = 1
        Width = 49
        GradientColorStyle = gcsCustom
        ImageIndex = 251
        Images = DataModule2.ImageListForBtns
        ShowCaption = True
        UseToolbarButtonLayout = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsClassic
        Caption = #26597#35810
      end
      object RzBtnCount: TRzToolButton
        Left = 57
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
        OnClick = RzBtnCountClick
      end
      object RzSpacer2: TRzSpacer
        Left = 49
        Top = 1
        Grooved = True
      end
      object btnClearSelection: TRzToolButton
        Left = 105
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
        Visible = False
        OnClick = btnClearSelectionClick
      end
      object btnExportExcel: TRzToolButton
        Left = 189
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
        OnClick = btnExportExcelClick
      end
      object btnExportoOA: TRzToolButton
        Left = 285
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
        OnClick = btnExportoOAClick
      end
    end
    object cxGrid1: TcxGrid
      Left = 2
      Top = 29
      Width = 1236
      Height = 558
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      RootLevelOptions.DetailFrameColor = clHighlight
      ExplicitTop = 34
      object cxGrid1DBTableView1: TcxGridDBTableView
        DragMode = dmAutomatic
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DataSource1
        DataController.Filter.MaxValueListCount = 1000
        DataController.MasterKeyFieldNames = 'ppxh'
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = #20849'##0'#20154
            Kind = skCount
            FieldName = 'PERSON_KEY'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #24635#35745':'
            Kind = skCount
          end
          item
            Format = #20849'0'#20154
            Kind = skCount
            FieldName = 'DENG_JI_SHI_JIAN'
          end>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnPopup.MaxDropDownItemCount = 12
        OptionsBehavior.CellHints = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsCustomize.ColumnHiding = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.GridLineColor = 11299354
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        Preview.AutoHeight = False
        Preview.MaxLineCount = 2
        Preview.Visible = True
        object cxGrid1DBTableView1classname: TcxGridDBColumn
          DataBinding.FieldName = 'classname'
          Width = 120
        end
        object cxGrid1DBTableView1kpbh: TcxGridDBColumn
          DataBinding.FieldName = 'kpbh'
          Width = 132
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
          Width = 108
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
        end
        object cxGrid1DBTableView1ggxh: TcxGridDBColumn
          DataBinding.FieldName = 'ggxh'
        end
        object cxGrid1DBTableView1toOAFlag: TcxGridDBColumn
          DataBinding.FieldName = 'toOAFlag'
          Width = 101
        end
        object cxGrid1DBTableView1Errorcode: TcxGridDBColumn
          DataBinding.FieldName = 'Errorcode'
          Width = 147
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
        Options.DetailFrameColor = clHighlight
        Options.DetailFrameWidth = 3
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = dsTemp
    Left = 408
    Top = 440
  end
  object cxstylrpstry1: TcxStyleRepository
    Left = 216
    Top = 472
    PixelsPerInch = 96
    object cxstyl1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clFuchsia
      TextColor = clRed
    end
    object cxstyl2: TcxStyle
    end
  end
  object dsTemp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 376
    object dsTemptype: TStringField
      DisplayLabel = #36164#20135#31867#21035
      FieldName = 'classname'
    end
    object dsTempkhbh: TStringField
      DisplayLabel = #36164#20135#32534#21495
      FieldName = 'kpbh'
    end
    object dsTempzcmc: TStringField
      DisplayLabel = #36164#20135#21517#31216
      FieldName = 'zcmc'
    end
    object dsTempsyzt: TStringField
      DisplayLabel = #20351#29992#29366#24577
      FieldName = 'syzt'
    end
    object dsTemppp: TStringField
      DisplayLabel = #21697#29260
      FieldName = 'pp'
    end
    object dsTempkjpzh: TStringField
      DisplayLabel = #20250#35745#20973#35777#21495
      FieldName = 'kjpzh'
    end
    object dsTempsyr: TStringField
      DisplayLabel = #20351#29992#20154
      FieldName = 'syr'
    end
    object dsTempremark2: TStringField
      DisplayLabel = #36523#20221#35777#21495
      FieldName = 'remark2'
      Size = 18
    end
    object dsTempbz: TStringField
      DisplayLabel = #22791#27880
      FieldName = 'bz'
    end
    object dsTempclasscode: TStringField
      DisplayLabel = #20998#31867#32534#21495
      FieldName = 'classcode'
    end
    object dsTempcfdd: TStringField
      DisplayLabel = #23384#25918#22320#28857
      FieldName = 'cfdd'
    end
    object dsTempzcfldm: TStringField
      DisplayLabel = #36164#20135#20998#31867#20195#30721
      FieldName = 'zcfldm'
    end
    object dsTempqdrq: TDateTimeField
      DisplayLabel = #21462#24471#26085#26399
      FieldName = 'qdrq'
    end
    object dsTemprzrq: TDateTimeField
      DisplayLabel = #20837#24080#26085#26399
      FieldName = 'rzrq'
    end
    object dsTempjz: TFloatField
      DisplayLabel = #20215#20540
      FieldName = 'jz'
    end
    object dsTempggxh: TStringField
      DisplayLabel = #35268#26684#22411#21495
      FieldName = 'ggxh'
    end
    object dsTemptoOAFlag: TStringField
      DisplayLabel = #21516#27493#26631#24535
      FieldName = 'toOAFlag'
      Size = 10
    end
    object dsTempErrorcode: TStringField
      DisplayLabel = #38169#35823#20195#30721
      FieldName = 'Errorcode'
      Size = 50
    end
  end
end
