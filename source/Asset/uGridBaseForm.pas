unit uGridBaseForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxContainer, cxTextEdit, cxMaskEdit, cxSpinEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, RzPanel, RzButton, StdCtrls, Mask, ExtCtrls, RzTabs,DBClient,uDataModule;

type
  TGridBaseForm = class(TForm)
    RzPanel11: TRzPanel;
    RzToolbar1: TRzToolbar;
    RzBtnLookup: TRzToolButton;
    RzBtnCount: TRzToolButton;
    RzSpacer2: TRzSpacer;
    btnClearSelection: TRzToolButton;
    btnExportExcel: TRzToolButton;
    DataSource1: TDataSource;
    btnExportoOA: TRzToolButton;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    dsTemp: TClientDataSet;
    dsTemptype: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dsTempkhbh: TStringField;
    dsTempzcmc: TStringField;
    dsTempsyzt: TStringField;
    dsTemppp: TStringField;
    dsTempkjpzh: TStringField;
    dsTempsyr: TStringField;
    dsTempremark2: TStringField;
    dsTempbz: TStringField;
    dsTempclasscode: TStringField;
    dsTempcfdd: TStringField;
    dsTempzcfldm: TStringField;
    dsTempggxh: TStringField;
    dsTemptoOAFlag: TStringField;
    dsTempErrorcode: TStringField;
    dsTempjz: TFloatField;
    dsTemprzrq: TDateTimeField;
    dsTempqdrq: TDateTimeField;
    cxGrid1DBTableView1classname: TcxGridDBColumn;
    cxGrid1DBTableView1kpbh: TcxGridDBColumn;
    cxGrid1DBTableView1zcmc: TcxGridDBColumn;
    cxGrid1DBTableView1syzt: TcxGridDBColumn;
    cxGrid1DBTableView1pp: TcxGridDBColumn;
    cxGrid1DBTableView1kjpzh: TcxGridDBColumn;
    cxGrid1DBTableView1syr: TcxGridDBColumn;
    cxGrid1DBTableView1remark2: TcxGridDBColumn;
    cxGrid1DBTableView1bz: TcxGridDBColumn;
    cxGrid1DBTableView1classcode: TcxGridDBColumn;
    cxGrid1DBTableView1cfdd: TcxGridDBColumn;
    cxGrid1DBTableView1zcfldm: TcxGridDBColumn;
    cxGrid1DBTableView1qdrq: TcxGridDBColumn;
    cxGrid1DBTableView1rzrq: TcxGridDBColumn;
    cxGrid1DBTableView1jz: TcxGridDBColumn;
    cxGrid1DBTableView1ggxh: TcxGridDBColumn;
    cxGrid1DBTableView1toOAFlag: TcxGridDBColumn;
    cxGrid1DBTableView1Errorcode: TcxGridDBColumn;
    procedure btnExportExcelClick(Sender: TObject);
    procedure BindDataSource(acds:TClientDataSet);
    procedure RzBtnCountClick(Sender: TObject);
    procedure btnClearSelectionClick(Sender: TObject);
    procedure btnExportoOAClick(Sender: TObject);
//    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
//      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
//      var ADone: Boolean);



  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  GridBaseForm: TGridBaseForm;

implementation
 uses uPublic,cxGridExportLink, uExportToOA;

{$R *.dfm}

procedure TGridBaseForm.BindDataSource(acds: TClientDataSet);
begin
    self.DataSource1.DataSet:=acds;
    self.cxGrid1.Refresh;
end;

procedure TGridBaseForm.btnExportExcelClick(Sender: TObject);
var SaveDialog:TSaveDialog;
begin
    SaveDialog:=TSaveDialog.create(self);
    with   SaveDialog do
    begin
        if Execute then
           begin
                ExportGridToExcel(FileName,cxGrid1,true,true,true,'xls');
           end;
    end;
    SaveDialog.free;
end;



procedure TGridBaseForm.btnClearSelectionClick(Sender: TObject);
begin
      cxGrid1DBTableView1.Controller.ClearSelection;
end;

procedure TGridBaseForm.RzBtnCountClick(Sender: TObject);
begin
  showmessage(inttostr(cxGrid1DBTableView1.ViewData.RowCount));
end;

procedure TGridBaseForm.btnExportoOAClick(Sender: TObject);
begin
  if ExportToOAForm = nil then
       ExportToOAForm:=TExportToOAForm.Create(self,self.cxGrid1DBTableView1);

  ExportToOAForm.setGrid(self.cxGrid1DBTableView1);

  ExportToOAForm.refreshCount;
  ExportToOAForm.Show;

end;


//procedure TGridBaseForm.cxGrid1DBTableView1CustomDrawCell(
//  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
//  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
//begin
//
//  //Item确定列(ID列的索引)，RecordViewInfo确定行(Index行的索引)
//  //可以定位到某一行改变颜色
// {if (AViewInfo.Item.ID = 0) and (AViewInfo.RecordViewInfo.Index = 0) then
//    ACanvas.Brush.Color := clred;}
//  //可以根据条件值确定改变某行颜色
//// if (trim(vartostr(AViewInfo.RecordViewInfo.GridRecord.Values[16]))= '失败')
////    //确定到某一列，如果不加确定是某行底色
////    then
////    ACanvas.Brush.Color := clred;
//
//end;



end.
