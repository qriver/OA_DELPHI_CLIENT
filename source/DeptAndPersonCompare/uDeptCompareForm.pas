unit uDeptCompareForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, RzPanel, RzButton, ExtCtrls,DbClient,
  ComCtrls;

type
  TDeptCompareForm = class(TForm)
    RzPanel11: TRzPanel;
    RzToolbar1: TRzToolbar;
    RzBtnLookup: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzBtnCount: TRzToolButton;
    RzSpacer2: TRzSpacer;
    btnClearSelection: TRzToolButton;
    btnExportExcel: TRzToolButton;
    btnExportoOA: TRzToolButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    DataSource1: TDataSource;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    Progressbar1: TProgressBar;
    procedure RzBtnLookupClick(Sender: TObject);
    procedure btnExportExcelClick(Sender: TObject);
  private
    procedure buildOADeptDataset;
    procedure getAcds(strSql: String; acds: TClientDataSet);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeptCompareForm: TDeptCompareForm;

implementation
uses uPublic,ora,provider;
{$R *.dfm}

procedure TDeptCompareForm.RzBtnLookupClick(Sender: TObject);
begin
  self.getAcds(uPublic.strDeptSql,uPublic.DeptAcds);
  self.DataSource1.DataSet:=uPublic.DeptAcds;
end;

procedure TDeptCompareForm.btnExportExcelClick(Sender: TObject);
begin

          if uPublic.OaDeptAcds.State=dsInactive then
          begin

                 with  uPublic.OaDeptAcds.FieldDefs.AddFieldDef  do
                 begin
                        Name := 'deptCode';
                        DataType := ftString;
                 end;
                 with  uPublic.OaDeptAcds.FieldDefs.AddFieldDef  do
                 begin
                        Name := 'deptName';
                        DataType := ftString;
                 end;
                 uPublic.OaDeptAcds.CreateDataSet;
          end;



end;

procedure TDeptCompareForm.buildOADeptDataset;
begin

end;

procedure TDeptCompareForm.getAcds(strSql: String;acds:TClientDataSet) ;
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
