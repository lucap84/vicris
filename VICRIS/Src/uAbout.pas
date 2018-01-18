unit uAbout;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TfmAbout = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    OKButton: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAbout: TfmAbout;

implementation

{$R *.dfm}

procedure TfmAbout.FormActivate(Sender: TObject);
var
  Size, Size2: DWord;
  Pt, Pt2    : Pointer;
begin
  Size:=GetFileVersionInfoSize (PChar(ParamStr(0)), Size2);
  if Size>0 then begin
    GetMem(Pt, Size);
    try
       GetFileVersionInfo(PChar(ParamStr(0)), 0, Size, Pt);
       // show the fixed information
       VerQueryValue(Pt, '\', Pt2, Size2);
       with TVSFixedFileInfo(Pt2^) do
         Version.Caption :=IntToStr(HiWord(dwFileVersionMS)) + '.' + IntToStr(LoWord(dwFileVersionMS)) + '.' + IntToStr(LoWord(dwFileVersionLS));
    finally
      FreeMem (Pt);
    end;
  end;
end;

end.
 
