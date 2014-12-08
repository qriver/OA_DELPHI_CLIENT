inherited NoAssignedForm: TNoAssignedForm
  Caption = 'NoAssignedForm'
  ExplicitTop = 8
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPanel11: TRzPanel
    inherited RzToolbar1: TRzToolbar
      ToolbarControls = (
        btnRefresh
        RzBtnLookup
        RzSpacer2
        RzBtnCount
        btnClearSelection
        btnExportExcel
        btnExportoOA)
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
        Visible = True
        ExplicitLeft = 205
      end
      inherited btnExportExcel: TRzToolButton
        Left = 289
        ExplicitLeft = 289
      end
      inherited btnExportoOA: TRzToolButton
        Left = 385
        Visible = False
        ExplicitLeft = 385
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
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        object cxGrid1DBTableView1classname: TcxGridDBColumn
          DataBinding.FieldName = 'classname'
        end
        object cxGrid1DBTableView1kpbh: TcxGridDBColumn
          DataBinding.FieldName = 'kpbh'
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
        end
        object cxGrid1DBTableView1cfdd: TcxGridDBColumn
          DataBinding.FieldName = 'cfdd'
        end
        object cxGrid1DBTableView1zcfldm: TcxGridDBColumn
          DataBinding.FieldName = 'zcfldm'
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
        end
        object cxGrid1DBTableView1Errorcode: TcxGridDBColumn
          DataBinding.FieldName = 'Errorcode'
        end
      end
    end
  end
end
