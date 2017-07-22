unit udmBrNazione;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, DBAccess, Ora, MemDS;

type
  TdmBrNazione = class(TdmBrowse)
    qyNazione: TOraQuery;
    dsNazione: TDataSource;
    qyNazioneCOD_NAZ: TStringField;
    qyNazioneDES_NAZ: TStringField;
    qyNazioneDES_PDL: TStringField;
    qyNazioneDAT_AGG_REC: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrNazione: TdmBrNazione;

implementation

{$R *.dfm}

end.
