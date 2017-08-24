unit udmEdMandante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBClient, Provider, MemDS, DBAccess, Ora, uSupportLib;

type
  TdmEdMandante = class(TdmEdit)
    qyMandante: TOraQuery;
    poMandante: TDataSetProvider;
    cdsMandante: TClientDataSet;
    dsMandante: TDataSource;
    cdsMandanteID_MANDANTE: TFloatField;
    cdsMandanteID_MANDANTE_OLD: TFloatField;
    cdsMandanteMANDANTE: TStringField;
    cdsMandanteINDIRIZZO: TStringField;
    cdsMandanteCITTA: TStringField;
    cdsMandanteCAP: TStringField;
    cdsMandantePROVINCIA: TStringField;
    cdsMandanteCELLULARE: TStringField;
    cdsMandanteTELEFONO_1: TStringField;
    cdsMandanteTELEFONO_2: TStringField;
    cdsMandanteFAX: TStringField;
    cdsMandanteMAIL: TStringField;
    cdsMandanteSITO: TStringField;
    cdsMandantePARTITA_IVA: TStringField;
    cdsMandanteCODICE_FISCALE: TStringField;
    cdsMandanteNOTE: TStringField;
    cdsMandanteBANCA: TStringField;
    cdsMandanteIBAN: TStringField;
    cdsMandanteCODICE_ABI: TStringField;
    cdsMandanteCODICE_CAB: TStringField;
    cdsMandanteCONTO_CORRENTE: TStringField;
    cdsMandanteCOD_USR: TStringField;
    cdsMandanteDES_PDL: TStringField;
    cdsMandanteDAT_AGG_REC: TDateTimeField;
  private
    { Private declarations }
  protected
    function dmCheckValidateData: boolean; override;
  public
    { Public declarations }
  end;

var
  dmEdMandante: TdmEdMandante;

implementation

{$R *.dfm}

{ TdmEdMandante }

function TdmEdMandante.dmCheckValidateData: boolean;
var
  AMsg : String;
begin
  AMsg   := '';
  Result := True;

  if AMsg <> '' then  begin
    MessageDlg(AMsg, mtError, [mbOK], 0);
    Result := False;
  end
  else
    inherited dmCheckValidateData;
end;

end.
