inherited OrgForm: TOrgForm
  Caption = 'OrgForm'
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
        object cxGrid1DBTableView1jgdm: TcxGridDBColumn
          DataBinding.FieldName = 'jgdm'
          Width = 81
        end
        object cxGrid1DBTableView1Jgzsm: TcxGridDBColumn
          DataBinding.FieldName = 'Jgzsm'
          Width = 90
        end
        object cxGrid1DBTableView1Jgjc: TcxGridDBColumn
          DataBinding.FieldName = 'Jgjc'
          Width = 90
        end
        object cxGrid1DBTableView1Jgxtccm: TcxGridDBColumn
          DataBinding.FieldName = 'Jgxtccm'
          Visible = False
          Width = 86
        end
        object cxGrid1DBTableView1Jgbm: TcxGridDBColumn
          DataBinding.FieldName = 'Jgbm'
          Width = 100
        end
        object cxGrid1DBTableView1Sjzz: TcxGridDBColumn
          DataBinding.FieldName = 'Sjzz'
          Visible = False
          Width = 57
        end
        object cxGrid1DBTableView1ParentDepCode: TcxGridDBColumn
          DataBinding.FieldName = 'ParentDepCode'
          Width = 99
        end
        object cxGrid1DBTableView1ParentDepFullName: TcxGridDBColumn
          DataBinding.FieldName = 'ParentDepFullName'
          Width = 78
        end
      end
    end
  end
  inherited DataSource1: TDataSource
    DataSet = dsOrg
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
