unit uOrg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uGridBaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, DBClient, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, RzPanel,
  RzButton, ExtCtrls, uROClient, uROBaseHTTPClient, uROWinInetHttpChannel,
  uROSOAPMessage;

type
  TOrgForm = class(TGridBaseForm)
    dsOrg: TClientDataSet;
    dsOrgjgbm: TStringField;
    dsOrgJgzsm: TStringField;
    dsOrgJgjc: TStringField;
    dsOrgJgxtccm: TStringField;
    dsOrgJgbm2: TStringField;
    dsOrgSjzz: TStringField;
    dsOrgParentDepCode: TStringField;
    dsOrgParentDepFullName: TStringField;
    cxGrid1DBTableView1jgdm: TcxGridDBColumn;
    cxGrid1DBTableView1Jgzsm: TcxGridDBColumn;
    cxGrid1DBTableView1Jgjc: TcxGridDBColumn;
    cxGrid1DBTableView1Jgxtccm: TcxGridDBColumn;
    cxGrid1DBTableView1Jgbm: TcxGridDBColumn;
    cxGrid1DBTableView1Sjzz: TcxGridDBColumn;
    cxGrid1DBTableView1ParentDepCode: TcxGridDBColumn;
    cxGrid1DBTableView1ParentDepFullName: TcxGridDBColumn;
    ROSOAPMessage1: TROSOAPMessage;
    rwnthtpchnl1: TROWinInetHTTPChannel;
    procedure RzBtnLookupClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure OnLoadDataEvent(Sender: TObject);  override;

    { Private declarations }
  public
   { Public declarations }

  end;

var
  OrgForm: TOrgForm;



implementation
 uses OrgInfoInterace_Intf,XMLIntf,XMLDoc,OrgInfoInterace_Async;
{$R *.dfm}
var srv:IOrgInfoService_Async;
var uOainfo:OAINFO;



procedure TOrgForm.FormCreate(Sender: TObject);
begin
  inherited;
  uoainfo:=OAINFO.Create;
  srv:=CoOrgInfoService_Async.Create(self.ROSOAPMessage1,Self.rwnthtpchnl1);

end;

procedure TOrgForm.RzBtnLookupClick(Sender: TObject);
var s:string;
//var e:EQUIPMENTINFO;

var xmldoc:TXMLDocument;
    root,itemnode:IXMLNODE;
var i:Integer;
begin

    //  uOainfo:= srv.FNGETDEPINFO;


      self.DoLoadData(self);  //触发 authread.execute动作，执行数据装载
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

procedure TOrgForm.OnLoadDataEvent(Sender: TObject);
var i:Integer;
begin
   uOainfo.OARESULTFLAG:='';
   uOainfo.OAERROR:='';
    try
         //  uOainfo:= srv.FNGETUSERINFO  ;
           srv.Invoke_FNGETDEPINFO;
          repeat
           if  srv.AnswerReceived  then
                     uOainfo:= srv.Retrieve_FNGETDEPINFO;
             Application.ProcessMessages;
          until(uOainfo.OARESULTFLAG<>'') ;
    except
           uOainfo.OARESULTFLAG:='N';
    end;
    Self.LoadCompleteFlag:=true;


end;

end.
