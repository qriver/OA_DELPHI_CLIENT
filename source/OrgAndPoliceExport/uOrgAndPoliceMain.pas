unit uOrgAndPoliceMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, RzButton, ExtCtrls, RzTabs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  uROClient, uROSOAPMessage, uROBaseHTTPClient, uROWinInetHttpChannel,DBClient,
  xmldom, Xmlxform, ComCtrls, uGridBaseForm;

type
  TOrgPoliceExport = class(TGridBaseForm)
    ROSOAPMessage1: TROSOAPMessage;
    rwnthtpchnl1: TROWinInetHTTPChannel;
    DataSource1: TDataSource;
    dsOrg: TClientDataSet;
    dsOrgjgbm: TStringField;
    dsOrgJgzsm: TStringField;
    dsOrgJgjc: TStringField;
    dsOrgJgxtccm: TStringField;
    dsOrgJgbm2: TStringField;
    dsOrgSjzz: TStringField;
    dsOrgParentDepCode: TStringField;
    dsOrgParentDepFullName: TStringField;
    ds2: TDataSource;
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
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    rzpnl1: TRzPanel;
    RzToolbar1: TRzToolbar;
    RzBtnLookup: TRzToolButton;
    RzSpacer1: TRzSpacer;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1jgdm: TcxGridDBColumn;
    cxGrid1DBTableView1Jgzsm: TcxGridDBColumn;
    cxGrid1DBTableView1Jgjc: TcxGridDBColumn;
    cxGrid1DBTableView1Jgxtccm: TcxGridDBColumn;
    cxGrid1DBTableView1Jgbm: TcxGridDBColumn;
    cxGrid1DBTableView1Sjzz: TcxGridDBColumn;
    cxGrid1DBTableView1ParentDepCode: TcxGridDBColumn;
    cxGrid1DBTableView1ParentDepFullName: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    TabSheet2: TRzTabSheet;
    rzpnl2: TRzPanel;
    RzToolbar2: TRzToolbar;
    RzToolButton1: TRzToolButton;
    ProgressBar1: TProgressBar;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1userid: TcxGridDBColumn;
    cxGridDBTableView1name: TcxGridDBColumn;
    cxGridDBTableView1employeeNumber: TcxGridDBColumn;
    cxGridDBTableView1JobTitle: TcxGridDBColumn;
    cxGridDBTableView1InternetAddress: TcxGridDBColumn;
    cxGridDBTableView1DepName: TcxGridDBColumn;
    cxGridDBTableView1DepCode: TcxGridDBColumn;
    cxGridDBTableView1OtherDepCode: TcxGridDBColumn;
    cxGridDBTableView1OtherDepName: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    procedure RzBtnLookupClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure OnLoadDataEvent(Sender: TObject);override;
  private
    { Private declarations }
    orgcds:TClientDataSet;
   // procedure ThreadExecute(Sender: Tobject);
  public
    { Public declarations }
  end;

var
  OrgPoliceExport: TOrgPoliceExport;

implementation
uses OrgInfoInterace_Intf,XMLIntf,XMLDoc,OrgInfoInterace_Async;
{$R *.dfm}
//var htpchnl1:
var srv:IOrgInfoService_Async;
var uOainfo:OAINFO;

procedure TOrgPoliceExport.FormCreate(Sender: TObject);
var fieldJgdm:TField;
begin
     inherited;
   uoainfo:=OAINFO.Create;
   //srv:=CoOrgInfoService.Create(self.ROSOAPMessage1,Self.rwnthtpchnl1);
   srv:=CoOrgInfoService_Async.Create(self.ROSOAPMessage1,Self.rwnthtpchnl1);
   //orgcds.DataSetField.Fields.Add(fieldJgdm);
end;

procedure TOrgPoliceExport.FormDestroy(Sender: TObject);
begin
   srv:=nil;
   uOainfo.Free;
 //  rwnthtpchnl1.Free;
  // ROSOAPMessage1.Free;
end;

procedure TOrgPoliceExport.OnLoadDataEvent(Sender: TObject);
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

procedure TOrgPoliceExport.RzBtnLookupClick(Sender: TObject);

var s:string;
//var e:EQUIPMENTINFO;

var xmldoc:TXMLDocument;
    root,itemnode:IXMLNODE;
var i:Integer;
begin

    //  uOainfo:= srv.FNGETDEPINFO;
      s:=uOainfo.OARESULTFLAG;

      xmldoc:=TXMLDocument.Create(SELF);
     // xmldoc.Create(nil);
      xmldoc.LoadFromXML(s);
      xmldoc.Encoding:='UTF-8';
      xmldoc.Active:=true;

      root:=xmldoc.DocumentElement;
       self.DataSource1.DataSet:=nil;
      if dsOrg.State=dsInactive then
      begin
          dsorg.CreateDataSet;

      end  else
         begin
              dsOrg.EmptyDataSet;
              self.cxGrid1.Refresh ;
         //     dsorg:=TClientDataSet.Create(self)
         end;


      dsorg.Open;
      for i := 0 to root.ChildNodes.Count -1 do
      begin
         itemnode:= root.ChildNodes[i];
       //  ShowMessage(VarToStr(itemnode.ChildNodes.Nodes['Jgdm'].NodeValue));

         dsorg.Insert;
         dsorg.Fields.FieldByName('jgdm').Value:=itemnode.ChildNodes.Nodes['Jgdm'].NodeValue;
         dsorg.Fields.FieldByName('Jgzsm').Value:=itemnode.ChildNodes.Nodes['Jgzsm'].NodeValue;
         dsorg.Fields.FieldByName('Jgjc').Value:=itemnode.ChildNodes.Nodes['Jgjc'].NodeValue;
         dsorg.Fields.FieldByName('Jgxtccm').Value:=itemnode.ChildNodes.Nodes['Jgxtccm'].NodeValue;
         dsorg.Fields.FieldByName('Jgbm').Value:=itemnode.ChildNodes.Nodes['Jgbm'].NodeValue;
         dsorg.Fields.FieldByName('Sjzz').Value:=itemnode.ChildNodes.Nodes['Sjzz'].NodeValue;
         dsorg.Fields.FieldByName('ParentDepCode').Value:=itemnode.ChildNodes.Nodes['ParentDepCode'].NodeValue;
         dsorg.Fields.FieldByName('ParentDepFullName').Value:=itemnode.ChildNodes.Nodes['ParentDepFullName'].NodeValue;

         dsorg.UpdateRecord;
      end;


     self.DataSource1.DataSet:=dsorg;
     self.cxGrid1.Refresh ;

     root:=nil;
     itemnode:=nil;
     xmldoc.Active:=false;
     xmldoc.Free;


end;

procedure TOrgPoliceExport.RzToolButton1Click(Sender: TObject);
var i ,j:Integer;
var uzzinfo:ZZINFO;
var xmldoc:TXMLDocument;
    root,itemnode:IXMLNODE;
begin
    if dsPolice.State=dsInactive then
     dsPolice.CreateDataSet
    else
    begin
      dsPolice.EmptyDataSet;
      self.cxGrid2.Refresh ;
    end;
    self.ds2.DataSet:=nil;

    self.DoLoadData(self);  //触发 authread.execute动作，执行数据装载
   // uOainfo:= srv.FNGETUSERINFOBYCODE(uzzinfo);  ;
    xmldoc:=TXMLDocument.Create(SELF);

    xmldoc.LoadFromXML(uOainfo.OARESULTFLAG);
    xmldoc.Encoding:='UTF-8';
    xmldoc.Active:=true;

    root:=xmldoc.DocumentElement;
    dsPolice.Open;
    self.ProgressBar1.Max:= root.ChildNodes.Count-1;

    for i := 0 to root.ChildNodes.Count-1    do
    begin
         ProgressBar1.Position:=i;
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
    self.ds2.DataSet:=dsPolice;
    self.cxGrid2.Refresh ;

 end;



end.
