unit uPolice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uGridBaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, DBClient, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, RzPanel, RzButton,
  ExtCtrls, uROClient, uROBaseHTTPClient, uROWinInetHttpChannel, uROSOAPMessage,
  ComCtrls, RzTabs;

type
  TPoliceForm = class(TGridBaseForm)
    dsPolice: TClientDataSet;
    dsPoliceuserid: TStringField;
    dsPolicename: TStringField;
    dsPoliceemployeeNumber: TStringField;
    dsPoliceJobTitle: TStringField;
    dsPoliceInternetAddress: TStringField;
    dsPoliceDepName: TStringField;
    dsPoliceDepCode: TStringField;
    dsPoliceOtherDepCode: TStringField;
    dsPoliceOtherDepName: TStringField;
    cxGrid1DBTableView1userid: TcxGridDBColumn;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1employeeNumber: TcxGridDBColumn;
    cxGrid1DBTableView1JobTitle: TcxGridDBColumn;
    cxGrid1DBTableView1InternetAddress: TcxGridDBColumn;
    cxGrid1DBTableView1DepName: TcxGridDBColumn;
    cxGrid1DBTableView1DepCode: TcxGridDBColumn;
    cxGrid1DBTableView1OtherDepCode: TcxGridDBColumn;
    cxGrid1DBTableView1OtherDepName: TcxGridDBColumn;
    ROSOAPMessage1: TROSOAPMessage;
    rwnthtpchnl1: TROWinInetHTTPChannel;
    procedure RzBtnLookupClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure FormDestroy(Sender: TObject);
    procedure OnLoadDataEvent(Sender: TObject);  override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PoliceForm: TPoliceForm;

implementation
 uses OrgInfoInterace_Intf,XMLIntf,XMLDoc,OrgInfoInterace_Async;
{$R *.dfm}
var srv:IOrgInfoService_Async;
var uOainfo:OAINFO;
procedure TPoliceForm.FormCreate(Sender: TObject);
begin
  inherited;
   uoainfo:=OAINFO.Create;
   //srv:=CoOrgInfoService.Create(self.ROSOAPMessage1,Self.rwnthtpchnl1);
   srv:=CoOrgInfoService_Async.Create(self.ROSOAPMessage1,Self.rwnthtpchnl1);
end;

procedure TPoliceForm.RzBtnLookupClick(Sender: TObject);
var i ,j:Integer;
var uzzinfo:ZZINFO;
var xmldoc:TXMLDocument;
    root,itemnode:IXMLNODE;
begin
    inherited;
    if dsPolice.State=dsInactive then
     dsPolice.CreateDataSet
    else
    begin
      dsPolice.EmptyDataSet;
      self.cxGrid1.Refresh ;
    end;
    self.DataSource1.DataSet:=nil;

    self.DoLoadData(self);  //触发 authread.execute动作，执行数据装载
   // uOainfo:= srv.FNGETUSERINFOBYCODE(uzzinfo);  ;
    xmldoc:=TXMLDocument.Create(SELF);

    xmldoc.LoadFromXML(uOainfo.OARESULTFLAG);
    xmldoc.Encoding:='UTF-8';
    xmldoc.Active:=true;

    root:=xmldoc.DocumentElement;
    dsPolice.Open;
    //self.ProgressBar1.Max:= root.ChildNodes.Count-1;

    for i := 0 to root.ChildNodes.Count-1    do
    begin
        // ProgressBar1.Position:=i;
         Application.ProcessMessages;
         itemnode:= root.ChildNodes[i];
         dsPolice.Insert;
         dsPolice.Fields.FieldByName('userid').Value:=itemnode.ChildNodes.Nodes['userid'].NodeValue;
         dsPolice.Fields.FieldByName('name').Value:=itemnode.ChildNodes.Nodes['name'].NodeValue;
         dsPolice.Fields.FieldByName('employeeNumber').Value:=itemnode.ChildNodes.Nodes['employeeNumber'].NodeValue;
         dsPolice.Fields.FieldByName('JobTitle').Value:=itemnode.ChildNodes.Nodes['JobTitle'].NodeValue;
         dsPolice.Fields.FieldByName('InternetAddress').Value:=itemnode.ChildNodes.Nodes['InternetAddress'].NodeValue;
         dsPolice.Fields.FieldByName('DepName').Value:=itemnode.ChildNodes.Nodes['DepName'].NodeValue;

         dsPolice.Fields.FieldByName('OtherDepCode').Value:=itemnode.ChildNodes.Nodes['OtherDepCode'].NodeValue;
         dsPolice.Fields.FieldByName('OtherDepName').Value:=vartostr(itemnode.ChildNodes.Nodes['OtherDepName'].NodeValue);
       //  showmessage(vartostr(dsPolice.Fields.FieldByName('OtherDepName').Value));
         dsPolice.Fields.FieldByName('DepCode').Value:=itemnode.ChildNodes.Nodes['DepCode'].NodeValue;
         dsPolice.UpdateRecord;
         dspolice.Post;
    end;


    root:=nil;
    itemnode:=nil;
    xmldoc:=nil;

  // for I := 0 to dsOrg.RecordCount-1 do
//   begin
//        ProgressBar1.Position:=i;
//        Application.ProcessMessages;
//
//
//        if dsOrg.FieldByName('ParentDepCode').Value='1' then
//        begin
//              uOainfo.OARESULTFLAG:='';
//              uOainfo.OAERROR:='';
//              uZzinfo.STRCODE:=dsOrg.FieldByName('jgbm').Value ;
//              uOainfo:= srv.FNGETUSERINFOBYCODE(uZzinfo)   ;
//              xmldoc:=TXMLDocument.Create(SELF);
//
//              xmldoc.LoadFromXML(uOainfo.OARESULTFLAG);
//              xmldoc.Encoding:='UTF-8';
//              xmldoc.Active:=true;
//
//              root:=xmldoc.DocumentElement;
//              dsPolice.Open;
//              for j := 0 to root.ChildNodes.Count -1 do
//              //for j := 0 to 10 do
//              begin
//                 itemnode:= root.ChildNodes[j];
//               //  ShowMessage(VarToStr(itemnode.ChildNodes.Nodes['Jgdm'].NodeValue));
//
//                 dsPolice.Insert;
//                 dsPolice.Fields.FieldByName('userid').Value:=itemnode.ChildNodes.Nodes['userid'].NodeValue;
//                 dsPolice.Fields.FieldByName('name').Value:=itemnode.ChildNodes.Nodes['name'].NodeValue;
//                 dsPolice.Fields.FieldByName('employeeNumber').Value:=itemnode.ChildNodes.Nodes['employeeNumber'].NodeValue;
//                 dsPolice.Fields.FieldByName('JobTitle').Value:=itemnode.ChildNodes.Nodes['JobTitle'].NodeValue;
//                 dsPolice.Fields.FieldByName('InternetAddress').Value:=itemnode.ChildNodes.Nodes['InternetAddress'].NodeValue;
//                 dsPolice.Fields.FieldByName('DepName').Value:=itemnode.ChildNodes.Nodes['DepName'].NodeValue;
//                 dsPolice.Fields.FieldByName('OtherDepName').Value:=itemnode.ChildNodes.Nodes['OtherDepName'].NodeValue;
//                 dsPolice.Fields.FieldByName('OtherDepCode').Value:=itemnode.ChildNodes.Nodes['OtherDepCode'].NodeValue;
//                 dsPolice.Fields.FieldByName('DepCode').Value:=itemnode.ChildNodes.Nodes['DepCode'].NodeValue;
//                 //dsPolice.Fields.FieldByName('OtherDepName').Value:=itemnode.ChildNodes.Nodes['OtherDepName'].NodeValue;
//                // dsPolice.Fields.FieldByName('OtherDepCode').Value:=itemnode.ChildNodes.Nodes['OtherDepCode'].NodeValue;
//                 dsPolice.UpdateRecord;
//              end;
//
//              root:=nil;
//              itemnode:=nil;
//              xmldoc:=nil;
//        end;
//
//   end;
    self.DataSource1.DataSet:=dsPolice;
    self.cxGrid1.Refresh ;

end;
procedure TPoliceForm.FormDestroy(Sender: TObject);
begin
   srv:=nil;
   uOainfo.Free;
 //  rwnthtpchnl1.Free;
  // ROSOAPMessage1.Free;
end;

procedure TPoliceForm.OnLoadDataEvent(Sender: TObject);
var i:Integer;
begin
   uOainfo.OARESULTFLAG:='';
   uOainfo.OAERROR:='';
    try
         //  uOainfo:= srv.FNGETUSERINFO  ;
           srv.Invoke_FNGETUSERINFO ;
          repeat
           if  srv.AnswerReceived  then
                     uOainfo:= srv.Retrieve_FNGETUSERINFO;
             Application.ProcessMessages;
          until(uOainfo.OARESULTFLAG<>'') ;
    except
           uOainfo.OARESULTFLAG:='N';
    end;
    Self.LoadCompleteFlag:=true;


end;
end.
