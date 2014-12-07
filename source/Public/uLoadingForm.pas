unit uLoadingForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GIFImg, StdCtrls;

type
  TLoadingForm = class(TForm)
    img1: TImage;
    lbl1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoadingForm: TLoadingForm;

implementation

{$R *.dfm}

procedure TLoadingForm.FormCreate(Sender: TObject);
begin
   TGIFImage(img1.Picture.Graphic).AnimationSpeed := 100;
    TGIFImage(img1.Picture.Graphic).Animate := True;
end;

end.
