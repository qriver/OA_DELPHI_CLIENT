object OrgPoliceExport: TOrgPoliceExport
  Left = 0
  Top = 0
  Caption = 'OrgPoliceExport'
  ClientHeight = 551
  ClientWidth = 814
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 814
    Height = 551
    ActivePage = TabSheet2
    Align = alClient
    UseColoredTabs = True
    TabIndex = 1
    TabOrder = 0
    TabStyle = tsDoubleSlant
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = #32452#32455#26426#26500#23548#20986
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object rzpnl1: TRzPanel
        Left = 0
        Top = 0
        Width = 810
        Height = 528
        Align = alClient
        TabOrder = 0
        object RzToolbar1: TRzToolbar
          Left = 2
          Top = 2
          Width = 806
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
            RzBtnLookup)
          object RzBtnLookup: TRzToolButton
            Left = 8
            Top = -1
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
            Caption = #33719#21462#32452#32455#26426#26500#20449#24687
            OnClick = RzBtnLookupClick
          end
          object RzSpacer1: TRzSpacer
            Left = 0
            Top = -1
            Grooved = True
          end
        end
        object cxGrid1: TcxGrid
          Left = 2
          Top = 29
          Width = 806
          Height = 497
          Align = alClient
          TabOrder = 1
          LookAndFeel.Kind = lfOffice11
          RootLevelOptions.DetailFrameColor = clHighlight
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
            object cxGrid1DBTableView1jgdm: TcxGridDBColumn
              DataBinding.FieldName = 'jgdm'
              Width = 88
            end
            object cxGrid1DBTableView1Jgzsm: TcxGridDBColumn
              DataBinding.FieldName = 'Jgzsm'
              Width = 90
            end
            object cxGrid1DBTableView1Jgjc: TcxGridDBColumn
              DataBinding.FieldName = 'Jgjc'
              Width = 86
            end
            object cxGrid1DBTableView1Jgxtccm: TcxGridDBColumn
              DataBinding.FieldName = 'Jgxtccm'
              Width = 63
            end
            object cxGrid1DBTableView1Jgbm: TcxGridDBColumn
              DataBinding.FieldName = 'Jgbm'
              Width = 54
            end
            object cxGrid1DBTableView1Sjzz: TcxGridDBColumn
              DataBinding.FieldName = 'Sjzz'
              Width = 57
            end
            object cxGrid1DBTableView1ParentDepCode: TcxGridDBColumn
              DataBinding.FieldName = 'ParentDepCode'
              Width = 115
            end
            object cxGrid1DBTableView1ParentDepFullName: TcxGridDBColumn
              DataBinding.FieldName = 'ParentDepFullName'
              Width = 113
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
            Options.DetailFrameColor = clHighlight
            Options.DetailFrameWidth = 3
          end
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Color = clMedGray
      Caption = #35686#21592#20449#24687#23548#20986
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object rzpnl2: TRzPanel
        Left = 0
        Top = 0
        Width = 810
        Height = 528
        Align = alClient
        TabOrder = 0
        object RzToolbar2: TRzToolbar
          Left = 2
          Top = 2
          Width = 806
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
            RzToolButton1)
          object RzToolButton1: TRzToolButton
            Left = 0
            Top = -1
            Width = 105
            GradientColorStyle = gcsCustom
            ImageIndex = 251
            Images = DataModule2.ImageListForBtns
            ShowCaption = True
            UseToolbarButtonLayout = False
            UseToolbarButtonSize = False
            UseToolbarShowCaption = False
            UseToolbarVisualStyle = False
            VisualStyle = vsClassic
            Caption = #33719#21462#35686#21592#20449#24687
            OnClick = RzToolButton1Click
          end
        end
        object ProgressBar1: TProgressBar
          Left = 2
          Top = 509
          Width = 806
          Height = 17
          Align = alBottom
          TabOrder = 1
        end
        object cxGrid2: TcxGrid
          Left = 2
          Top = 29
          Width = 806
          Height = 480
          Align = alClient
          TabOrder = 2
          LookAndFeel.Kind = lfOffice11
          RootLevelOptions.DetailFrameColor = clHighlight
          object cxGridDBTableView1: TcxGridDBTableView
            DragMode = dmAutomatic
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ds2
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
            object cxGridDBTableView1userid: TcxGridDBColumn
              DataBinding.FieldName = 'userid'
              Width = 90
            end
            object cxGridDBTableView1name: TcxGridDBColumn
              DataBinding.FieldName = 'name'
              Width = 58
            end
            object cxGridDBTableView1employeeNumber: TcxGridDBColumn
              DataBinding.FieldName = 'employeeNumber'
              Width = 73
            end
            object cxGridDBTableView1JobTitle: TcxGridDBColumn
              DataBinding.FieldName = 'JobTitle'
              Width = 73
            end
            object cxGridDBTableView1InternetAddress: TcxGridDBColumn
              DataBinding.FieldName = 'InternetAddress'
              Width = 73
            end
            object cxGridDBTableView1DepName: TcxGridDBColumn
              DataBinding.FieldName = 'DepName'
              Width = 72
            end
            object cxGridDBTableView1DepCode: TcxGridDBColumn
              DataBinding.FieldName = 'DepCode'
              Width = 87
            end
            object cxGridDBTableView1OtherDepCode: TcxGridDBColumn
              DataBinding.FieldName = 'OtherDepCode'
              Width = 90
            end
            object cxGridDBTableView1OtherDepName: TcxGridDBColumn
              DataBinding.FieldName = 'OtherDepName'
              Width = 87
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
            Options.DetailFrameColor = clHighlight
            Options.DetailFrameWidth = 3
          end
        end
      end
    end
  end
  object ROSOAPMessage1: TROSOAPMessage
    Envelopes = <>
    SerializationOptions = []
    Left = 328
    Top = 128
  end
  object rwnthtpchnl1: TROWinInetHTTPChannel
    UserAgent = 'RemObjects SDK'
    DispatchOptions = []
    ServerLocators = <>
    SynchronizedProbing = False
    TargetURL = 
      'http://oa.domino.yc.hb/indishare/indiwscenter.nsf/wsDep?OpenWebS' +
      'ervice'
    TrustInvalidCA = False
    Left = 448
    Top = 152
  end
  object DataSource1: TDataSource
    DataSet = dsOrg
    Left = 200
    Top = 448
  end
  object dsOrg: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 456
    object dsOrgjgbm: TStringField
      DisplayLabel = ' '#26426#26500#32534#30721
      FieldName = 'jgdm'
      Size = 200
    end
    object dsOrgJgzsm: TStringField
      DisplayLabel = #26426#26500#27491#24335#21517
      FieldName = 'Jgzsm'
      Size = 200
    end
    object dsOrgJgjc: TStringField
      DisplayLabel = #26426#26500#31616#31216
      FieldName = 'Jgjc'
      Size = 200
    end
    object dsOrgJgxtccm: TStringField
      FieldName = 'Jgxtccm'
      Size = 200
    end
    object dsOrgJgbm2: TStringField
      DisplayLabel = #26426#26500#32534#30721
      FieldName = 'Jgbm'
      Size = 200
    end
    object dsOrgSjzz: TStringField
      FieldName = 'Sjzz'
      Size = 200
    end
    object dsOrgParentDepCode: TStringField
      DisplayLabel = #19978#32423#21333#20301#20195#30721
      FieldName = 'ParentDepCode'
      Size = 500
    end
    object dsOrgParentDepFullName: TStringField
      DisplayLabel = #19978#32423#26426#26500#20840#31216
      FieldName = 'ParentDepFullName'
      Size = 500
    end
  end
  object ds2: TDataSource
    DataSet = dsPolice
    Left = 432
    Top = 464
  end
  object dsPolice: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 400
    object dsPoliceuserid: TStringField
      DisplayLabel = #29992#25143#32534#30721
      FieldName = 'userid'
      Size = 18
    end
    object dsPolicename: TStringField
      DisplayLabel = #22995#21517
      FieldName = 'name'
    end
    object dsPoliceemployeeNumber: TStringField
      DisplayLabel = #35686#21495
      FieldName = 'employeeNumber'
    end
    object dsPoliceJobTitle: TStringField
      FieldName = 'JobTitle'
    end
    object dsPoliceInternetAddress: TStringField
      DisplayLabel = #37038#31665
      FieldName = 'InternetAddress'
    end
    object dsPoliceDepName: TStringField
      DisplayLabel = #21333#20301#21517#31216
      FieldName = 'DepName'
      Size = 500
    end
    object dsPoliceDepCode: TStringField
      DisplayLabel = #21333#20301#20195#30721
      FieldName = 'DepCode'
      Size = 10
    end
    object dsPoliceOtherDepCode: TStringField
      DisplayLabel = #20854#23427#21333#20301#20195#30721
      FieldName = 'OtherDepCode'
      Size = 200
    end
    object dsPoliceOtherDepName: TStringField
      DisplayLabel = #20854#23427#21333#20301#21517#31216
      FieldName = 'OtherDepName'
      Size = 200
    end
  end
end
