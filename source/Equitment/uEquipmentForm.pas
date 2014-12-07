unit uEquipmentForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ComCtrls, RzPanel, RzButton, ExtCtrls,
  RzDTP, StdCtrls;

type
  TEquipmentForm = class(TForm)
    RzPanel11: TRzPanel;
    RzToolbar1: TRzToolbar;
    RzBtnLookup: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzBtnCount: TRzToolButton;
    RzSpacer2: TRzSpacer;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    Progressbar1: TProgressBar;
    rzpnl2: TRzPanel;
    rzgrpbx1: TRzGroupBox;
    edtName: TEdit;
    lbl1: TLabel;
    Label1: TLabel;
    edtType: TEdit;
    edtBuyDate: TRzDateTimePicker;
    lbl2: TLabel;
    lbl3: TLabel;
    edtNumber: TEdit;
    btnSave: TButton;
    lbl4: TLabel;
    edtMoney: TEdit;
    Label2: TLabel;
    edtBelongTo: TEdit;
    Label3: TLabel;
    edtBlongToName: TEdit;
    Label4: TLabel;
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EquipmentForm: TEquipmentForm;

implementation
uses wsAsset,uOADbProxy;
{$R *.dfm}

procedure TEquipmentForm.btnSaveClick(Sender: TObject);
var oainfo:wsAsset.OAINFO;
var assetinfo:wsAsset.ASSETINFO;
var i:Integer;
var guid:TGUID;
begin
    btnSave.enabled:=false;
   if edtNumber.Text='' then
   begin
      ShowMessage('±ØÐëÌîÐ´ÊýÁ¿');
      Exit;
   end;
   for I := 0 to StrToInt(edtNumber.text) - 1 do
   begin
      assetinfo:= wsAsset.ASSETINFO.Create;
      oainfo:=wsAsset.OAINFO.Create;
      self.Progressbar1.Max :=strtoint(edtNumber.text);
      assetinfo.STRNAME:=VarToStr(edtName.Text);
      assetinfo.STRINDATE:=DateToStr(edtBuyDate.Date);
      assetinfo.STRPRICE:=edtMoney.Text;
      assetinfo.STRASSETTYPE:=edtType.Text;
      assetinfo.STRBELONGTONO:=edtBelongTo.Text;
      assetinfo.STRBELONGTONAME:=edtBlongToName.text;
      CreateGuid(guid);
      assetinfo.STRNO:=GUIDToString(guid);
      assetinfo.STRNO:=StringReplace(assetinfo.STRNO,'{','',[]);
      assetinfo.STRNO:=StringReplace(assetinfo.STRNO,'}','',[]);

      assetinfo.STRASSETUSER:='';
      assetinfo.STRASSETUSERNO:='';
      assetinfo.STRPRODUCTDATE:='';
      assetinfo.STRDETAILEDINFO:='';
      assetinfo.STRFACTORYNO:='';
      assetinfo.STRSTORELOCATION:='';
      assetinfo.STRSUPPLIERS:='';
      assetinfo.STRPRODUCTNAME:='';


      oaDbProxy.CreateEquipMent(assetinfo,oainfo);
      if oainfo.OARESULTFLAG<>'Y' then
         ShowMessage(oainfo.OAERROR);
      assetinfo.Free;
      oainfo.Free;
      self.Progressbar1.Position:=i;
      Application.HandleMessage;
   end;
    btnSave.enabled:=true;
end;

end.
