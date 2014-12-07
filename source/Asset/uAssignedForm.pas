unit uAssignedForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uGridBaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, RzPanel, RzButton,
  ExtCtrls, ComCtrls, DBClient;

type
  TAssignedForm = class(TGridBaseForm)
    rzspcr3: TRzSpacer;
    Progressbar1: TProgressBar;
    btnCompareWithOA: TRzToolButton;
    btnRefresh: TRzToolButton;
    rzpnl1: TRzPanel;
    dsMoveToGroup: TDataSource;
    cdsMoveToGroup: TClientDataSet;
    cdsMoveToDetail: TClientDataSet;
    procedure btnCompareWithOAClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;



implementation
 uses uExportToOA,wsAsset,uOADbProxy,uPublic, uAssetMainForm;
{$R *.dfm}





procedure TAssignedForm.btnCompareWithOAClick(Sender: TObject);
var i:integer;
var oainfo:wsAsset.OAINFO;
var assetinfo:wsAsset.ASSETINFO;
begin
  self.Progressbar1.Max :=cxGrid1DBTableView1.ViewData.RowCount;
  Self.Progressbar1.Position:=0;
  for I := 0 to cxGrid1DBTableView1.ViewData.RowCount - 1 do
  begin
       assetinfo:= wsAsset.ASSETINFO.Create;
       oainfo:=wsAsset.OAINFO.Create;
       Self.Progressbar1.Position:=i;
       with   cxGrid1DBTableView1 do begin
         assetinfo.STRNAME:= vartostr(ViewData.Rows[i].Values[GetColumnByFieldName('zcmc').Index]);
         assetinfo.strNo:= vartostr(ViewData.Rows[i].Values[GetColumnByFieldName('kpbh').Index]);
         assetinfo.STRASSETUSERNO:= vartostr(ViewData.Rows[i].Values[GetColumnByFieldName('remark2').Index]);
         oaDbProxy.GETASSETINFOBYID(assetinfo,oainfo);


           if oainfo.OARESULTFLAG='Y' then
           begin
              if UpperCase(oainfo.OAERROR)=UpperCase(assetinfo.STRASSETUSERNO) then
              begin
                  with  ViewData.Rows[i] do
                  begin
                     Values[valuecount-2]:='完全一致';
                   end;
                  with  ViewData.Rows[i] do
                  begin
                    Values[valuecount-1]:= '';
                  end;
              end else
              begin
                  with  ViewData.Rows[i] do
                  begin
                       Values[valuecount-2]:='已导入，使用人不一致';
                   end;
                  with  ViewData.Rows[i] do
                  begin
                        Values[valuecount-1]:= oainfo.OAERROR;
                  end;
              end;

           end else
           begin
                  with  ViewData.Rows[i] do
                  begin
                      ViewData.Rows[i].Values[valuecount-2]:='还未导入';
                  end;
                  with  ViewData.Rows[i] do
                  begin
                      ViewData.Rows[i].Values[valuecount-1]:= '';
                  end;
           end;
       end;
       Application.ProcessMessages;
       assetinfo.Free;
       oainfo.Free;
   end;

end;


procedure TAssignedForm.btnRefreshClick(Sender: TObject);
begin
  inherited;
   uPublic.AssignedACDS.Close;
   self.cxGrid1.Refresh;

   AssetMainForm.getAcds(uPublic.strAssignedSql,dsTemp);
   self.BindDataSource(Self.dsTemp);
         // self.getAcds(uPublic.strNoAssignedSql,uPublic.noAssignedACDS);
end;

end.
