inherited NoAssignedForm: TNoAssignedForm
  Caption = 'NoAssignedForm'
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
  end
end
