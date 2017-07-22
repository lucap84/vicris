unit udmSearcher;

interface

uses
  SysUtils, Classes;

type
  TdmSearcher = class(TDataModule)
  private
    FhDesResult: Variant;
    FhSearchResult: Variant;
    { Private declarations }
  public
    { Public declarations }
    procedure dmSearch(Sender: TWinControl; SenderDes: TWinControl = nil);

    property hSearchResult : Variant read FhSearchResult write FhSearchResult;
    property hDesResult    : Variant read FhDesResult    write FhDesResult;
  end;

var
  dmSearcher: TdmSearcher;

implementation

{$R *.dfm}

{ TdmSearcher }

procedure TdmSearcher.dmSearch(Sender, SenderDes: TWinControl);
begin
  hSearchResult := Null;
  hDesResult    := Null;
end;

end.
