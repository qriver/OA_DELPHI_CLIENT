unit uAssetMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, RzTabs,uPublic,DB,Ora,DBClient, RzDBGrid,Provider,ADODB;

type
  TAssetMainForm = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    rzpnl1: TRzPanel;
    TabSheet2: TRzTabSheet;
    rzpnl2: TRzPanel;
    procedure FormCreate(Sender: TObject);
  private
     adoConnect: TADOConnection;

    procedure getAcds2(strSql: String; acds: TClientDataSet);
    { Private declarations }
  public
     procedure getAcds(strSql: String; acds: TClientDataSet);
    { Public declarations }
  end;

var
  AssetMainForm: TAssetMainForm;

implementation
{$R *.dfm}
uses uAssignedForm,uNoAssignedForm,uOADbProxy;
var frmAssignedForm:TAssignedForm;
var NoAssignedForm: TNoAssignedForm;

procedure TAssetMainForm.FormCreate(Sender: TObject);
begin
   RzPageControl1.ActivePage:=TabSheet1;

      if frmAssignedForm=nil then
      begin
          frmAssignedForm:=TAssignedForm.Create(self);
          frmAssignedForm.Parent:=tabsheet1;
          frmAssignedForm.BorderStyle:=bsNone;
          frmAssignedForm.Align:=alClient;
          frmAssignedForm.BindDataSource(uPublic.AssignedACDS);
          frmAssignedForm.Show;

          NoAssignedForm:=TNoAssignedForm.Create(self);
          NoAssignedForm.Parent:=tabsheet2;
          NoAssignedForm.BorderStyle:=bsNone;
          NoAssignedForm.Align:=alClient;
          NoAssignedForm.BindDataSource(uPublic.NoAssignedACDS);
          NoAssignedForm.Show;
         // self.getAcds(uPublic.strAssignedSql,uPublic.AssignedACDS);
         // self.getAcds(uPublic.strNoAssignedSql,uPublic.noAssignedACDS);
      end  else
      begin
         // uPublic.AssignedACDS.Close;
         // uPublic.noAssignedACDS.Close;
          //self.getAcds(uPublic.strAssignedSql,uPublic.AssignedACDS);
         // self.getAcds(uPublic.strNoAssignedSql,uPublic.noAssignedACDS);
      end;

     // self.getAcds(uPublic.strAssignedSql,uPublic.AssignedACDS);
     // self.getAcds(uPublic.strNoAssignedSql,uPublic.noAssignedACDS);



end;

procedure TAssetMainForm.getAcds(strSql: String;acds:TClientDataSet) ;
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


procedure TAssetMainForm.getAcds2(strSql: String; acds: TClientDataSet);
var    adoDataset: TADODataSet;
var adp:TDataSetProvider;
begin
     adoDataset:= TADODataSet.create(nil);
     adoDataset.Connection:=adoConnect;
     adoDataset.CommandText:=strSql;
     adoDataset.Active;

      adp:=TDataSetProvider.Create(self) ;
      with adp do
      begin
           DataSet := adoDataset;
      end;
      acds.Data := adp.data ;


     adp.Free;
     adoDataset.Free;

end;
end.
