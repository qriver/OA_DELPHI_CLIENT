unit uOrgPoliceMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, RzTabs;

type
  TOrgPoliceForm = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    rzpnl1: TRzPanel;
    TabSheet2: TRzTabSheet;
    rzpnl2: TRzPanel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrgPoliceForm: TOrgPoliceForm;

implementation

{$R *.dfm}
 uses uPolice,uOrg;
procedure TOrgPoliceForm.FormCreate(Sender: TObject);
begin
       RzPageControl1.ActivePage:=TabSheet1;

      if PoliceForm=nil then
      begin
          PoliceForm:=TPoliceForm.Create(self);
          PoliceForm.Parent:=tabsheet1;
          PoliceForm.BorderStyle:=bsNone;
          PoliceForm.Align:=alClient;
          PoliceForm.Show;

          OrgForm:=TOrgForm.Create(self);
          OrgForm.Parent:=tabsheet2;
          OrgForm.BorderStyle:=bsNone;
          OrgForm.Align:=alClient;
          OrgForm.Show;

//          PoliceForm:=TNoAssignedForm.Create(self);
//          NoAssignedForm.Parent:=tabsheet2;
//          NoAssignedForm.BorderStyle:=bsNone;
//          NoAssignedForm.Align:=alClient;
//          NoAssignedForm.BindDataSource(uPublic.NoAssignedACDS);
//          NoAssignedForm.Show;

      end ;

end;

end.
