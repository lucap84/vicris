unit uMlSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Ora, DB, Grids, DBGrids, uSupportLib,
  Buttons, DBGridAux;

type
  TfmMlSearch = class(TForm)
    pnTools: TPanel;
    grSearch: TDBGridAux;
    dsSearch: TDataSource;
    bbOk: TBitBtn;
    bbCancel: TBitBtn;
    bbInsert: TBitBtn;
    sbFilter: TSpeedButton;
    sbSearch: TSpeedButton;
    procedure grSearchDblClick(Sender: TObject);
    procedure bbOkClick(Sender: TObject);
    procedure sbSearchClick(Sender: TObject);
    procedure sbFilterClick(Sender: TObject);
    procedure grSearchGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; State: TGridDrawState;
      StateEx: TGridDrawStateEx);
    procedure grSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FhRes: Variant;
    FhArrFields: TStringList;
    FhTag : integer;
  public
    { Public declarations }
    procedure Search(ACaption: String; AQy: TOraQuery; ResList: String; ATag: Integer);
    procedure SetSearchResult;
    property  hRes : Variant read FhRes write FhRes;
  end;

var
  fmMlSearch: TfmMlSearch;

implementation

{$R *.dfm}

{ TfmMlSearch }

procedure TfmMlSearch.Search(ACaption: String; AQy: TOraQuery; ResList: String; ATag: integer);

  procedure Split(StrBuf,Delimiter: string; var MyStrList: TStringList);
  var
    TmpBuf: string;
    LoopCount: integer;
  begin
    LoopCount := 0;
    repeat
      if StrBuf[LoopCount] = Delimiter then
      begin
        MyStrList.Add(TmpBuf);
        TmpBuf := '';
      end;
      TmpBuf := TmpBuf + StrBuf[LoopCount];
      inc(LoopCount);
    until LoopCount > Length(StrBuf);
    MyStrList.Add(Copy(TmpBuf,2,Length(TmpBuf)));
  end;

begin
  FhTag := ATag;
  AQy.Close;
  FhArrFields := TStringList.Create;
  Split(ResList, ';', FhArrFields);
  FhRes := VarArrayCreate([0, FhArrFields.Count -1], varVariant);
  Self.Caption := Self.Caption + ' ' + ACaption;
  dsSearch.DataSet := AQy;
  dsSearch.DataSet.Open;
  grSearch.Filtered := sbFilter.Down;
  Self.ShowModal;
end;

procedure TfmMlSearch.grSearchDblClick(Sender: TObject);
begin
  SetSearchResult;
end;

procedure TfmMlSearch.SetSearchResult;
var
  i : integer;
begin
  for i := 0 to FhArrFields.Count - 1 do
    FhRes[i] := dsSearch.DataSet.FieldByName(StringReplace(FhArrFields[i], ';', '', [rfReplaceAll])).Value;
  Self.ModalResult := mrOk;
end;

procedure TfmMlSearch.bbOkClick(Sender: TObject);
begin
  SetSearchResult;
end;

procedure TfmMlSearch.sbSearchClick(Sender: TObject);
begin
  grSearch.SetFocus;
  if sbSearch.Down then
  begin
    grSearch.OptionsEx := grSearch.OptionsEx + [dgeSearchBar];
    sbFilterClick(nil);
  end
  else
    grSearch.OptionsEx := grSearch.OptionsEx - [dgeSearchBar];
end;

procedure TfmMlSearch.sbFilterClick(Sender: TObject);
begin
  grSearch.SetFocus;
  grSearch.Filtered  := sbFilter.Down;
  if sbFilter.Down then
  begin
    grSearch.OptionsEx := grSearch.OptionsEx + [dgeFilterBar];
    sbSearchClick(nil);
  end
  else
    grSearch.OptionsEx := grSearch.OptionsEx - [dgeFilterBar];
end;

procedure TfmMlSearch.grSearchGetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; State: TGridDrawState;
  StateEx: TGridDrawStateEx);
begin
  if (geActiveRow in StateEx) and
     sbSearch.Down            and
     (not grSearch.Focused)   then
    Background := clMoneyGreen;
end;

procedure TfmMlSearch.grSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    SetSearchResult;
end;

end.
