unit uMainform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzTabs, ImgList, ExtCtrls, RzPanel, RzButton, Grids, DBGrids,
   Menus,uPublic,DB,Ora,DBClient, RzDBGrid,Provider,ADODB;

type
  TfrmMain = class(TForm)
    tbrMain: TRzToolbar;
    btn1: TRzToolButton;
    imlMain: TImageList;
    imlTray: TImageList;
    imlGroup: TImageList;
    RzPanel1: TRzPanel;
    btnCompareDeptAndPerson: TRzToolButton;
    btnEquipment: TRzToolButton;
    btnDeptAndPolice: TRzToolButton;
    btnExit: TRzToolButton;
    procedure FormCreate(Sender: TObject);
//    procedure RzPageControl1Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnCompareDeptAndPersonClick(Sender: TObject);
    procedure btnEquipmentClick(Sender: TObject);
    procedure btnDeptAndPoliceClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    adoConnect: TADOConnection;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;



implementation
uses uOADbProxy,uAssetMainForm,CompareDeptAndPersonMainForm,uEquipForm,uOrgPoliceMain;
{$R *.dfm}





procedure TfrmMain.btn1Click(Sender: TObject);
begin
  if AssetMainForm=nil then
  begin
          AssetMainForm:=TAssetMainForm.Create(self);
  end ;
  if CompareDeptAndPersonForm<>nil then
      CompareDeptAndPersonForm.Visible:=false;
  AssetMainForm.Visible:=true;
  AssetMainForm.Parent:=RzPanel1;
  AssetMainForm.BorderStyle:=bsNone;
  AssetMainForm.Align:=alClient;
  AssetMainForm.Show;
end;

procedure TfrmMain.btnCompareDeptAndPersonClick(Sender: TObject);
begin
  if CompareDeptAndPersonForm=nil then
  begin
          CompareDeptAndPersonForm:=TCompareDeptAndPersonForm.Create(self);
  end ;
  if AssetMainForm<>nil then
     AssetMainForm.Visible:=false;
  CompareDeptAndPersonForm.Visible:=True;
  CompareDeptAndPersonForm.Parent:=RzPanel1;
  CompareDeptAndPersonForm.BorderStyle:=bsNone;
  CompareDeptAndPersonForm.Align:=alClient;
  CompareDeptAndPersonForm.Show;

end;

procedure TfrmMain.btnDeptAndPoliceClick(Sender: TObject);
begin
      if OrgPoliceForm=nil then
  begin
          OrgPoliceForm:=TOrgPoliceForm.Create(self);
  end ;
  OrgPoliceForm.Visible:=True;
  OrgPoliceForm.Parent:=RzPanel1;
  OrgPoliceForm.BorderStyle:=bsNone;
  OrgPoliceForm.Align:=alClient;
  OrgPoliceForm.Show;
end;

procedure TfrmMain.btnEquipmentClick(Sender: TObject);
begin
      if EquipForm=nil then
  begin
          EquipForm:=TEquipForm.Create(self);
  end ;
  EquipForm.Visible:=True;
  EquipForm.Parent:=RzPanel1;
  EquipForm.BorderStyle:=bsNone;
  EquipForm.Align:=alClient;
  EquipForm.Show;
end;

procedure TfrmMain.btnExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var    adoDataset: TADODataSet;
begin
       OraSession:=TOraSession.Create(self);
       uPublic.AssignedACDS:=TClientDataSet.Create(self);
       uPublic.noAssignedACDS:=TClientDataSet.Create(self);
       DeptAcds :=TClientDataSet.Create(self);
       PersonAcds :=TClientDataSet.Create(self);
       OaDeptAcds :=TClientDataSet.Create(self);
       OAPersonAcds :=TClientDataSet.Create(self);

       if not OraSession.Connected  then
       begin
           OraSession.Options.Direct:=true;
           OraSession.ConnectPrompt:=false;
           OraSession.Username:=uPublic.strUserName;
           OraSession.Password:=uPublic.strPassword;
           OraSession.Server:=uPublic.strUrl;
           OraSession.Connect;
       end;
      oaDbProxy:=TOaDbProxy.create;


//        adoConnect:= ADODB.TADOConnection.create(self);
//        adoconnect.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source=J:\oa_client\output\bin\DB\db1.mdb;Persist Security Info=False';
//        adoconnect.LoginPrompt:=false;
//        adoconnect.Open();
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
   OraSession.Close;
   OraSession.Free;
   oaDbProxy.Free;
end;



//procedure TfrmMain.RzPageControl1Change(Sender: TObject);
//begin
//  if RzPageControl1.ActivePageIndex=0 then
//  begin
//       TabSheet1.Color:= clActiveCaption;
//       TabSheet2.Color:= clMedGray;
//
//  end
//  else if True then
//  begin
//        TabSheet2.Color:= clActiveCaption;
//        TabSheet1.Color:= clMedGray;
//  end;
//
//end;



end.
