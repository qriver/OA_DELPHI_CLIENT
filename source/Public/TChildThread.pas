unit TChildThread;

interface

uses
 Classes,Messages,Windows,SysUtils,Dialogs,uThreadForm;

const MAX_LEN = 260;
type
 TChildThreads = class(TThread)
 private
    { Private declarations }
 protected
procedure Execute; override;
//ͬ������������
    procedure UpdateData;
 public
     szName : array[0..MAX_LEN] of Char;
     nIndex : Integer;
     uform:TThreadForm;
 end;

implementation
{ Important: Methods and properties of objects in VCL or CLX can only be used
 in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

 and UpdateCaption could look like,

    procedure TChildThread.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ TChildThread }
//ͬ��������ʵ��
procedure TChildThreads.UpdateData;

     var i:Integer;
begin
     //  Form1.ShowData.Items.Add(PChar(@szName));
     //showmessage('adsfdasdasf');
    // uform.LoadCompleteFlag:=false;
     uform.OnLoadDataEvent(self);

   //repeat

  // until (false);
  // uform.LoadCompleteFlag:=true;
end;

procedure TChildThreads.Execute;
begin
 { Place thread code here }
 //����ͬ������
     Synchronize(UpdateData);
end;

end.
