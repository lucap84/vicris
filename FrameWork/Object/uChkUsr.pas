unit uChkUsr;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TfmChkUsr = class(TForm)
    OKButton: TButton;
    laUsr: TLabel;
    laPwd: TLabel;
    deUsr: TEdit;
    dePwd: TEdit;
    imLogin: TImage;
    procedure OKButtonClick(Sender: TObject);
  private
    FhUsr: String;
    FhPwd: String;
    { Private declarations }
  public
    { Public declarations }
    property hUsr : String read FhUsr write FhUsr;
    property hPwd : String read FhPwd write FhPwd;
  end;

var
  fmChkUsr: TfmChkUsr;

implementation

{$R *.dfm}

procedure TfmChkUsr.OKButtonClick(Sender: TObject);
begin
  FhUsr := deUsr.Text;
  FhPwd := dePwd.Text;
end;

end.
 
