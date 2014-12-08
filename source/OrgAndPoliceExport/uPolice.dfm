inherited PoliceForm: TPoliceForm
  Caption = 'PoliceForm'
  OnCreate = FormCreate
  ExplicitWidth = 1256
  ExplicitHeight = 627
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPanel11: TRzPanel
    inherited RzToolbar1: TRzToolbar
      ToolbarControls = (
        RzBtnLookup
        RzSpacer2
        RzBtnCount
        btnClearSelection
        btnExportExcel
        btnExportoOA)
      inherited RzBtnLookup: TRzToolButton
        OnClick = RzBtnLookupClick
      end
      inherited RzBtnCount: TRzToolButton
        Visible = True
      end
      inherited btnExportoOA: TRzToolButton
        Visible = False
      end
    end
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        object cxGrid1DBTableView1userid: TcxGridDBColumn
          DataBinding.FieldName = 'userid'
          Width = 114
        end
        object cxGrid1DBTableView1name: TcxGridDBColumn
          DataBinding.FieldName = 'name'
          Width = 81
        end
        object cxGrid1DBTableView1employeeNumber: TcxGridDBColumn
          DataBinding.FieldName = 'employeeNumber'
          Width = 90
        end
        object cxGrid1DBTableView1JobTitle: TcxGridDBColumn
          DataBinding.FieldName = 'JobTitle'
          Width = 93
        end
        object cxGrid1DBTableView1InternetAddress: TcxGridDBColumn
          DataBinding.FieldName = 'InternetAddress'
          Width = 120
        end
        object cxGrid1DBTableView1DepName: TcxGridDBColumn
          DataBinding.FieldName = 'DepName'
          Width = 86
        end
        object cxGrid1DBTableView1DepCode: TcxGridDBColumn
          DataBinding.FieldName = 'DepCode'
          Width = 114
        end
        object cxGrid1DBTableView1OtherDepCode: TcxGridDBColumn
          DataBinding.FieldName = 'OtherDepCode'
          Width = 162
        end
        object cxGrid1DBTableView1OtherDepName: TcxGridDBColumn
          DataBinding.FieldName = 'OtherDepName'
          Width = 114
        end
      end
    end
  end
  inherited DataSource1: TDataSource
    DataSet = dsPolice
  end
  object dsPolice: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 384
    Top = 376
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
end
