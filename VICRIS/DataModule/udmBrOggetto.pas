unit udmBrOggetto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, MemDS, DBAccess, Ora;

type
  TdmBrOggetto = class(TdmBrowse)
    dsOggetto: TDataSource;
    qyOggetto: TOraQuery;
    qyOggettoCOD_OGG: TStringField;
    qyOggettoCOD_CDU: TStringField;
    qyOggettoDES_OGG: TStringField;
    qyOggettoDES_PDL: TStringField;
    qyOggettoDAT_AGG_REC: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrOggetto: TdmBrOggetto;

implementation

{$R *.dfm}

end.
