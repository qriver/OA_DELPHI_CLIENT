unit uNoAssignedForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uGridBaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, RzPanel, RzButton,
  ExtCtrls, DBClient;

type
  TNoAssignedForm = class(TGridBaseForm)
    btnRefresh: TRzToolButton;
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;



implementation

uses uExportToOA,uAssetMainForm,uPublic;

{$R *.dfm}

procedure TNoAssignedForm.btnRefreshClick(Sender: TObject);
begin
  inherited;
    inherited;
    uPublic.noAssignedACDS.Close;
   self.cxGrid1.Refresh;
      AssetMainForm.getAcds(uPublic.strAssignedSql,dsTemp);
   self.BindDataSource(Self.dsTemp);
   end;

end.
