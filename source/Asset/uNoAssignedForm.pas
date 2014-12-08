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
    cxGrid1DBTableView1classname: TcxGridDBColumn;
    cxGrid1DBTableView1kpbh: TcxGridDBColumn;
    cxGrid1DBTableView1zcmc: TcxGridDBColumn;
    cxGrid1DBTableView1syzt: TcxGridDBColumn;
    cxGrid1DBTableView1pp: TcxGridDBColumn;
    cxGrid1DBTableView1kjpzh: TcxGridDBColumn;
    cxGrid1DBTableView1syr: TcxGridDBColumn;
    cxGrid1DBTableView1remark2: TcxGridDBColumn;
    cxGrid1DBTableView1bz: TcxGridDBColumn;
    cxGrid1DBTableView1classcode: TcxGridDBColumn;
    cxGrid1DBTableView1cfdd: TcxGridDBColumn;
    cxGrid1DBTableView1zcfldm: TcxGridDBColumn;
    cxGrid1DBTableView1qdrq: TcxGridDBColumn;
    cxGrid1DBTableView1rzrq: TcxGridDBColumn;
    cxGrid1DBTableView1jz: TcxGridDBColumn;
    cxGrid1DBTableView1ggxh: TcxGridDBColumn;
    cxGrid1DBTableView1toOAFlag: TcxGridDBColumn;
    cxGrid1DBTableView1Errorcode: TcxGridDBColumn;
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
