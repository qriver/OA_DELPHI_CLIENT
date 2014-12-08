object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 282
  ClientWidth = 466
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 466
    Height = 282
    Align = alClient
    TabOrder = 0
    Visible = False
    LookAndFeel.Kind = lfOffice11
    RootLevelOptions.DetailFrameColor = clHighlight
    ExplicitWidth = 418
    object cxGrid1DBTableView1: TcxGridDBTableView
      DragMode = dmAutomatic
      NavigatorButtons.ConfirmDelete = False
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
      OptionsBehavior.DragDropText = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.ColumnsQuickCustomization = True
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
      object cxGrid1DBTableView1APPID: TcxGridDBColumn
        Caption = #36164#20135#31867#21035
        DataBinding.FieldName = 'classname'
        Options.Editing = False
        Options.ShowEditButtons = isebNever
        Options.Moving = False
        Width = 105
      end
      object cxGrid1DBTableView1APPNAME: TcxGridDBColumn
        Caption = #36164#20135#32534#21495
        DataBinding.FieldName = 'kpbh'
        Options.Editing = False
        Options.ShowEditButtons = isebNever
        Options.Moving = False
        Width = 124
      end
      object cxGrid1DBTableView1DATASOURCE: TcxGridDBColumn
        Caption = #36164#20135#21517#31216
        DataBinding.FieldName = 'zcmc'
        Options.Editing = False
        Options.ShowEditButtons = isebNever
        Width = 121
      end
      object cxGrid1DBTableView1Column11: TcxGridDBColumn
        Caption = #20351#29992#29366#24577
        DataBinding.FieldName = 'syzt'
        Width = 77
      end
      object cxGrid1DBTableView1DB_SCHEMA: TcxGridDBColumn
        Caption = #21697#29260
        DataBinding.FieldName = 'pp'
        Options.Editing = False
        Options.ShowEditButtons = isebNever
        Options.Moving = False
        Width = 101
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #20215#20540
        DataBinding.FieldName = 'jz'
        Options.Editing = False
        Options.ShowEditButtons = isebNever
        Options.Moving = False
        Width = 67
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #20250#35745#20973#35777
        DataBinding.FieldName = 'kjpzh'
        Options.Editing = False
        Options.ShowEditButtons = isebNever
        Options.Moving = False
        Width = 125
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #20837#36134#26085#26399
        DataBinding.FieldName = 'rzrq'
        Options.Editing = False
        Options.ShowEditButtons = isebNever
        Options.Moving = False
        Width = 100
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = #20351#29992#20154
        DataBinding.FieldName = 'syr'
        Options.Editing = False
        Options.ShowEditButtons = isebNever
        Options.Moving = False
        Width = 91
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = #36523#20221#35777#21495
        DataBinding.FieldName = 'remark2'
        Options.Editing = False
        Options.ShowEditButtons = isebNever
        Options.Moving = False
        Width = 125
      end
      object cxGrid1DBTableView1META_DATASOURCE: TcxGridDBColumn
        Caption = #22791#27880
        DataBinding.FieldName = 'bz'
        Options.Editing = False
        Options.ShowEditButtons = isebNever
        Options.Moving = False
        Width = 88
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = #36164#20135#20998#31867#20195#30721
        DataBinding.FieldName = 'classcode'
        Width = 107
      end
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        Caption = #36141#20080#26085#26399
        DataBinding.FieldName = 'qdrq'
        Width = 92
      end
      object cxGrid1DBTableView1Column8: TcxGridDBColumn
        Caption = #20351#29992#31649#29702#37096#38376
        DataBinding.FieldName = 'cfdd'
        Width = 70
      end
      object cxGrid1DBTableView1Column9: TcxGridDBColumn
        Caption = #25152#23646#20998#31867#20195#30721
        DataBinding.FieldName = 'zcfldm'
        Width = 95
      end
      object cxGrid1DBTableView1Column10: TcxGridDBColumn
        Caption = #35268#26684#22411#21495
        DataBinding.FieldName = 'ggxh'
        Width = 79
      end
      object cxGrid1DBTableView1Column12: TcxGridDBColumn
        Caption = #21516#27493#26631#24535
        DataBinding.FieldName = 'toOAFlag'
        Width = 83
      end
      object cxgrdbclmnGrid1DBTableView1Column13: TcxGridDBColumn
        Caption = #38169#35823#20195#30721
        DataBinding.FieldName = 'Errorcode'
        Width = 66
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
      Options.DetailFrameColor = clHighlight
      Options.DetailFrameWidth = 3
    end
  end
end
