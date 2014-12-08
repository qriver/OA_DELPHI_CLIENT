unit uThreadForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TThreadForm = class(TForm)
  private
    { Private declarations }
  public
   fLoadDataEvent:TNotifyEvent ;
   LoadCompleteFlag:Boolean;
   procedure OnLoadDataEvent(Sender: TObject);virtual;abstract;
   procedure DoLoadData(Sender: TObject);
   property  OnLoadData : TNotifyEvent read fLoadDataEvent write fLoadDataEvent;
    { Public declarations }
  end;

var
  ThreadForm: TThreadForm;

implementation
uses uLoadingForm,uMainForm;
//var uthread:TChildThreads;
{$R *.dfm}
{ TThreadForm }




procedure TThreadForm.DoLoadData;
begin
       Self.fLoadDataEvent:=DoLoadData;

       LoadingForm:=TLoadingForm.Create(self);
       LoadingForm.Left:=trunc(frmMain.Left+(frmMain.Width -LoadingForm.Width )/2);
       LoadingForm.Top:=trunc(frmMain.Top+(frmMain.Height -LoadingForm.Height)/2);
       LoadingForm.Show;
       OnLoadDataEvent(self);
       LoadingForm.Free;
       //uthread:=TChildThreads.Create(true);
       //uthread.uform:=self;

      // uthread.Resume;
end;









end.
