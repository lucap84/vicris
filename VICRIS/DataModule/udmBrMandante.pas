unit udmBrMandante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, DBAccess, Ora, MemDS;

type
  TdmBrMandante = class(TdmBrowse)
    qyMandante: TOraQuery;
    dsMandante: TDataSource;
    qyMandanteID_MANDANTE: TFloatField;
    qyMandanteID_MANDANTE_OLD: TFloatField;
    qyMandanteMANDANTE: TStringField;
    qyMandanteINDIRIZZO: TStringField;
    qyMandanteCITTA: TStringField;
    qyMandanteCAP: TStringField;
    qyMandantePROVINCIA: TStringField;
    qyMandanteCELLULARE: TStringField;
    qyMandanteTELEFONO_1: TStringField;
    qyMandanteTELEFONO_2: TStringField;
    qyMandanteFAX: TStringField;
    qyMandanteMAIL: TStringField;
    qyMandanteSITO: TStringField;
    qyMandantePARTITA_IVA: TStringField;
    qyMandanteCODICE_FISCALE: TStringField;
    qyMandanteNOTE: TStringField;
    qyMandanteBANCA: TStringField;
    qyMandanteIBAN: TStringField;
    qyMandanteCODICE_ABI: TStringField;
    qyMandanteCODICE_CAB: TStringField;
    qyMandanteCONTO_CORRENTE: TStringField;
    qyMandanteCOD_USR: TStringField;
    qyMandanteDES_PDL: TStringField;
    qyMandanteDAT_AGG_REC: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrMandante: TdmBrMandante;

implementation

{$R *.dfm}

{ TdmBrMandante }

end.
