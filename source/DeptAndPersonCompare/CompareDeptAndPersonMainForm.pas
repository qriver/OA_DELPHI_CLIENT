unit CompareDeptAndPersonMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, RzTabs,DBClient,Ora,Provider;

type
  TCompareDeptAndPersonForm = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    rzpnl1: TRzPanel;
    TabSheet2: TRzTabSheet;
    rzpnl2: TRzPanel;
    procedure FormCreate(Sender: TObject);
  private
    procedure getAcds(strSql: String; acds: TClientDataSet);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CompareDeptAndPersonForm: TCompareDeptAndPersonForm;

implementation
uses uDeptCompareForm,uPublic;
{$R *.dfm}

procedure TCompareDeptAndPersonForm.FormCreate(Sender: TObject);
begin
    RzPageControl1.ActivePage:=TabSheet1;
          if DeptCompareForm=nil then
      begin
          DeptCompareForm:=TDeptCompareForm.Create(self);
          DeptCompareForm.Parent:=tabsheet1;
          DeptCompareForm.BorderStyle:=bsNone;
          DeptCompareForm.Align:=alClient;
          //frmAssignedForm.BindDataSource(uPublic.AssignedACDS);
          DeptCompareForm.Show;

//          NoAssignedForm:=TNoAssignedForm.Create(self);
//          NoAssignedForm.Parent:=tabsheet2;
//          NoAssignedForm.BorderStyle:=bsNone;
//          NoAssignedForm.Align:=alClient;
//          NoAssignedForm.BindDataSource(uPublic.NoAssignedACDS);
//          NoAssignedForm.Show;
           // self.getAcds(uPublic.strDeptSql,uPublic.DeptAcds);
//          self.getAcds(uPublic.strNoAssignedSql,uPublic.noAssignedACDS);
      end  else
      begin
          uPublic.DeptAcds.Close;
          //uPublic.noAssignedACDS.Close;
          self.getAcds(uPublic.strDeptSql,uPublic.DeptAcds);
         // self.getAcds(uPublic.strNoAssignedSql,uPublic.noAssignedACDS);
      end;


end;


procedure TCompareDeptAndPersonForm.getAcds(strSql: String;acds:TClientDataSet) ;
var ds:TOraDataSet;
var adp:TDataSetProvider;
begin
      ds:=TOradataset.Create(self);
      ds.Session:=orasession;
      ds.SQL.text :=strSql;
      ds.Open;

      adp:=TDataSetProvider.Create(self) ;
      with adp do
      begin
           DataSet := ds;
      end;
      acds.Data := adp.data ;
      ds.Close;
      adp.Free;
      ds.Free;
end;
end.
