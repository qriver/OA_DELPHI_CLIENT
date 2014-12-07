object DeptCompareForm: TDeptCompareForm
  Left = 0
  Top = 0
  Caption = 'DeptCompareForm'
  ClientHeight = 519
  ClientWidth = 637
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel11: TRzPanel
    Left = 0
    Top = 0
    Width = 637
    Height = 519
    Align = alClient
    TabOrder = 0
    object RzToolbar1: TRzToolbar
      Left = 2
      Top = 2
      Width = 633
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
        RzSpacer1
        RzBtnLookup
        RzSpacer2
        RzBtnCount
        btnClearSelection
        btnExportExcel
        btnExportoOA)
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
        Caption = #33719#21462#36164#20135#31995#32479#21333#20301#25968#25454
        OnClick = RzBtnLookupClick
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
      object btnClearSelection: TRzToolButton
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
      object btnExportExcel: TRzToolButton
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
        OnClick = btnExportExcelClick
      end
      object btnExportoOA: TRzToolButton
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
    object cxGrid1: TcxGrid
      Left = 2
      Top = 29
      Width = 633
      Height = 471
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      RootLevelOptions.DetailFrameColor = clHighlight
      ExplicitHeight = 488
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
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        Preview.AutoHeight = False
        Preview.MaxLineCount = 2
        Preview.Visible = True
        object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = #21333#20301#20195#30721
          DataBinding.FieldName = 'pydm'
          Width = 126
        end
        object cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = #21333#20301#21517#31216
          DataBinding.FieldName = 'vcDeptName'
          Width = 154
        end
        object cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = 'OA'#21333#20301#20195#30721
          Width = 95
        end
        object cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn
          Caption = 'oa'#21333#20301#21517#31216
          DataBinding.FieldName = 'oaDeptName'
          Width = 121
        end
        object cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = #27604#36739#32467#26524
          DataBinding.FieldName = 'compareflag'
          Width = 119
        end
        object cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = #38169#35823#21407#22240
          DataBinding.FieldName = 'errorcode'
          Width = 148
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
        Options.DetailFrameColor = clHighlight
        Options.DetailFrameWidth = 3
      end
    end
    object Progressbar1: TProgressBar
      Left = 2
      Top = 500
      Width = 633
      Height = 17
      Align = alBottom
      TabOrder = 2
      ExplicitTop = 570
      ExplicitWidth = 1236
    end
  end
  object DataSource1: TDataSource
    Left = 288
    Top = 440
  end
  object cxstylrpstry1: TcxStyleRepository
    Left = 560
    Top = 160
    PixelsPerInch = 96
    object cxstyl1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clFuchsia
      TextColor = clRed
    end
    object cxstyl2: TcxStyle
    end
  end
end
