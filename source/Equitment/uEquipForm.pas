unit uEquipForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uGridBaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, DBClient, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, RzPanel,
  RzButton, ExtCtrls, StdCtrls, ComCtrls, RzDTP;

type
  TEquipForm = class(TGridBaseForm)
    rzpnl2: TRzPanel;
    rzgrpbx1: TRzGroupBox;
    btnSave: TButton;
    RzPanel1: TRzPanel;
    RzGroupBox1: TRzGroupBox;
    lbl1: TLabel;
    Label1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    Label2: TLabel;
    edtName: TEdit;
    edtType: TEdit;
    edtBuyDate: TRzDateTimePicker;
    edtNumber: TEdit;
    Button1: TButton;
    edtMoney: TEdit;
    Label3: TLabel;
    Button2: TButton;
    Button3: TButton;
    edtBelongTo: TComboBox;
    ProgressBar1: TProgressBar;
    edtBelongTo2: TComboBox;
    RzToolButton1: TRzToolButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzBtnLookupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EquipForm: TEquipForm;


implementation
uses wsAsset,uOADbProxy;
{$R *.dfm}

procedure TEquipForm.Button1Click(Sender: TObject);
var oainfo:wsAsset.OAINFO;
var assetinfo:wsAsset.ASSETINFO;
var i:Integer;
var guid:TGUID;
var str:TStringList;
begin
    btnSave.enabled:=false;
    str:=TStringList.Create;
   if edtNumber.Text='' then
   begin
      ShowMessage('±ØÐëÌîÐ´ÊýÁ¿');
      Exit;
   end;
   for I := 0 to StrToInt(edtNumber.text) - 1 do
   begin
      assetinfo:= wsAsset.ASSETINFO.Create;
      oainfo:=wsAsset.OAINFO.Create;
     // self.Progressbar1.Max :=strtoint(edtNumber.text);
      assetinfo.STRNAME:=VarToStr(edtName.Text);
      assetinfo.STRINDATE:=DateToStr(edtBuyDate.Date);
      assetinfo.STRPRICE:=edtMoney.Text;
      assetinfo.STRASSETTYPE:=edtType.Text;

      str.Delimiter:='.';
      str.DelimitedText:= edtBelongTo.Text;
      assetinfo.STRBELONGTONO:=str[0];
      assetinfo.STRBELONGTONAME:=str[1];
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
     // self.Progressbar1.Position:=i;
      Application.HandleMessage;
   end;
    btnSave.enabled:=true;
     str.Free;
end;

procedure TEquipForm.FormCreate(Sender: TObject);
begin
  inherited;
   Self.rzpnl2.Visible:=False;
   Self.RzPanel1.Visible:=false;
end;

procedure TEquipForm.RzBtnLookupClick(Sender: TObject);
begin
       Self.rzpnl2.Visible:=true;
   Self.RzPanel1.Visible:=false;
   Self.cxGrid1.Visible:=true;

end;

procedure TEquipForm.RzToolButton1Click(Sender: TObject);
begin
  inherited;
   Self.rzpnl2.Visible:=False;
   Self.RzPanel1.Visible:=true;
   Self.cxGrid1.Visible:=false;
end;

end.
