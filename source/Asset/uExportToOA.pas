unit uExportToOA;

interface

uses
  SysUtils, Variants, Dialogs,Classes, Controls,Messages, Forms,
  StdCtrls, ComCtrls,cxGridDBTableView,wsAsset;

type
  TExportToOAForm = class(TForm)
    ProgressBar1: TProgressBar;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    GridView:TcxGridDBTableView;

    //procedure writeoa();
  public
    { Public declarations }
   //  Constructor Create;overload;
     procedure refreshCount;
     procedure setGrid(view:TcxGridDBTableView);
     Constructor Create(aform:TCustomForm;view:TcxGridDBTableView);overload;
     destructor  Destory;overload;
  end;

var
  ExportToOAForm: TExportToOAForm;




implementation
uses comObj,XMLIntf,  XMLDoc,uOADbProxy;
{$R *.dfm}

{ TExportToOAForm }
var AssetSoap:wsAsset.Asset;
xmlHttp:oleVariant;


procedure TExportToOAForm.Button1Click(Sender: TObject);
var i:integer;
var oainfo:wsAsset.OAINFO;
var assetinfo:wsAsset.ASSETINFO;
var importCount:integer;
    importRow:integer;
begin
  inherited;
  importCount:=0;
 // showmessage(inttostr(gridview.GetColumnByFieldName('pp').Index));
   if   GridView.ViewData.DataController.GetSelectedCount >0 then
   begin
           importCount:= GridView.ViewData.DataController.GetSelectedCount
   end  else
           importCount:=GridView.ViewData.RowCount;
  ProgressBar1.Max:=importCount;
  importRow:=0;
  for I := 0 to  importCount- 1 do
  begin

      assetinfo:= wsAsset.ASSETINFO.Create;
      oainfo:=wsAsset.OAINFO.Create;
      with  gridview do
      begin
         if   GridView.ViewData.DataController.GetSelectedCount >0 then
           begin
                importRow:=GridView.ViewData.DataController.GetSelectedRowIndex(i);
           end else
                importRow:=i;

          assetinfo.STRNAME:= vartostr(ViewData.Rows[importRow].Values[GetColumnByFieldName('zcmc').Index]);
          assetinfo.strNo:= vartostr(ViewData.Rows[importRow].Values[GetColumnByFieldName('kpbh').Index]);

          assetinfo.STRASSETNO:= vartostr(ViewData.Rows[importRow].Values[GetColumnByFieldName('kpbh').Index]);
          assetinfo.STRBELONGTONO:= vartostr(ViewData.Rows[importRow].Values[GetColumnByFieldName('classcode').Index]);
          assetinfo.STRBELONGTONAME:=vartostr( ViewData.Rows[importRow].Values[GetColumnByFieldName('classname').Index]);
          assetinfo.STRPURCHASEDATE:=vartostr( ViewData.Rows[importRow].Values[GetColumnByFieldName('qdrq').Index]);
          assetinfo.STRPRICE:= vartostr(ViewData.Rows[importRow].Values[GetColumnByFieldName('jz').Index]);
          assetinfo.STRDETAILEDINFO:= vartostr(ViewData.Rows[importRow].Values[GetColumnByFieldName('bz').Index]);
          assetinfo.STRSTORELOCATION:= vartostr(ViewData.Rows[importRow].Values[GetColumnByFieldName('cfdd').Index]);
         // assetinfo.STRBELONGTONO:= ViewData.Rows[i].Values[GetColumnByFieldName('zcfldm').Index];
          assetinfo.STRVOUCHERNO:= vartostr(ViewData.Rows[importRow].Values[GetColumnByFieldName('kjpzh').Index]);
          assetinfo.STRBRAND:= vartostr(ViewData.Rows[importRow].Values[GetColumnByFieldName('pp').Index]);
          assetinfo.STRINDATE:= vartostr(ViewData.Rows[importRow].Values[GetColumnByFieldName('rzrq').Index]);
          assetinfo.STRASSETTYPE:= vartostr(ViewData.Rows[importRow].Values[GetColumnByFieldName('ggxh').Index]);
          assetinfo.STRASSETUSER:= vartostr(ViewData.Rows[importRow].Values[GetColumnByFieldName('syr').Index]);
          assetinfo.STRASSETUSERNO:= vartostr(ViewData.Rows[importRow].Values[GetColumnByFieldName('remark2').Index]);
      end;

          oaDbProxy.CreateAssetInfoDoc(assetinfo,oainfo);

         if oainfo.OARESULTFLAG='N' then
         begin
            with  GridView.ViewData.Rows[importRow] do
            begin
                Values[valuecount-2]:='失败';
             end;
            with  GridView.ViewData.Rows[importRow] do
            begin
                Values[valuecount-1]:= oainfo.OAERROR;
           end;

         end else
             begin
                with  GridView.ViewData.Rows[importRow] do
                    begin
                        Values[valuecount-2]:='导入成功';
                     end;
             end;



       label2.Caption:=inttostr(importRow)+'条记录';
       label2.Refresh;
       Application.ProcessMessages;
       ProgressBar1.Position:=i+1;
       assetinfo.Free;
       oainfo.Free;

  end;

end;

constructor TExportToOAForm.Create(aform:TCustomForm;view:TcxGridDBTableView);
begin
    inherited Create(aform);
    GridView:=view;
end;

destructor TExportToOAForm.Destory;
begin

end;



procedure TExportToOAForm.refreshCount;
var importCount:integer;
begin
   if   GridView.ViewData.DataController.GetSelectedCount >0 then
   begin
           importCount:= GridView.ViewData.DataController.GetSelectedCount
   end  else
           importCount:=GridView.ViewData.RowCount;

    label2.Caption:=inttostr(importCount)+'条记录';
end;

procedure TExportToOAForm.setGrid(view: TcxGridDBTableView);
begin
   refreshCount ;
   self.ProgressBar1.Position:=0;
   self.GridView:=view;
end;





end.
