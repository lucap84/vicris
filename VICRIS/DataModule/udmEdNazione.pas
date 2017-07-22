unit udmEdNazione;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBAccess, Ora, DBClient, Provider, MemDS, uSupportLib;

type
  TdmEdNazione = class(TdmEdit)
    qyNazione: TOraQuery;
    poNazione: TDataSetProvider;
    cdsNazione: TClientDataSet;
    dsNazione: TDataSource;
    cdsNazioneCOD_NAZ: TStringField;
    cdsNazioneDES_NAZ: TStringField;
    cdsNazioneDES_PDL: TStringField;
    cdsNazioneDAT_AGG_REC: TDateTimeField;
    cdsNazioneCOD_USR: TStringField;
  private
    { Private declarations }
  protected
    function dmCheckValidateData: boolean; override;
  public
    { Public declarations }
  end;

var
  dmEdNazione: TdmEdNazione;

implementation

{$R *.dfm}

{ TdmEdNazione }

function TdmEdNazione.dmCheckValidateData: boolean;
var
  AMsg : String;
begin
  Result := True;
  
  if cdsNazioneDES_NAZ.IsNull then
    AppendMsg(AMsg, 'Inserire la Nazione!');

  if AMsg <> '' then
  begin
    MessageDlg(AMsg, mtError, [mbOK], 0);
    Result := False;
  end
  else
    inherited dmCheckValidateData;
end;

end.
