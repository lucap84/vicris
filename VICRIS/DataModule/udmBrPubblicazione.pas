unit udmBrPubblicazione;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, MemDS, DBAccess, Ora;

type
  TdmBrPubblicazione = class(TdmBrowse)
    qyPubblicazione: TOraQuery;
    dsPubblicazione: TDataSource;
    qyPubblicazioneCOD_PUB: TStringField;
    qyPubblicazioneDES_PUB: TStringField;
    qyPubblicazioneCOD_ISB: TStringField;
    qyPubblicazioneDES_OGG: TStringField;
    qyPubblicazioneDES_CED: TStringField;
    qyPubblicazioneDES_CLZ: TStringField;
    qyPubblicazioneCOD_CDU: TStringField;
    qyPubblicazioneDES_PMR: TStringField;
    qyPubblicazioneDES_CDU: TStringField;
    qyPubblicazioneNUM_EDZ: TStringField;
    qyPubblicazioneAAA_PUB: TFloatField;
    qyPubblicazioneNUM_PAG: TFloatField;
    qyPubblicazioneDES_TAG: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrPubblicazione: TdmBrPubblicazione;

implementation

{$R *.dfm}

end.
