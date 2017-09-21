unit udmBrCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, DBAccess, Ora, MemDS;

type
  TdmBrCliente = class(TdmBrowse)
    qyCliente: TOraQuery;
    dsCliente: TDataSource;
    qyClienteID_CLIENTE: TFloatField;
    qyClienteNOME: TStringField;
    qyClienteREFERENTE: TStringField;
    qyClienteINDIRIZZO: TStringField;
    qyClienteINDIRIZZO_SPEDIZIONE: TStringField;
    qyClienteCITTA: TStringField;
    qyClienteCAP: TStringField;
    qyClienteTELEFONO: TStringField;
    qyClienteCELLULARE: TStringField;
    qyClienteFAX: TStringField;
    qyClienteBANCA: TStringField;
    qyClienteIBAN: TStringField;
    qyClienteNOTE: TStringField;
    qyClienteCOD_USR: TStringField;
    qyClienteDES_PDL: TStringField;
    qyClienteDAT_AGG_REC: TDateTimeField;
    qyClienteMAIL: TStringField;
    qyClienteSITO: TStringField;
    qyClientePARTITA_IVA: TStringField;
    qyClienteCODICE_FISCALE: TStringField;
    qyClienteCODICE_ABI: TStringField;
    qyClienteCODICE_CAB: TStringField;
    qyClienteID_PROVINCIA: TFloatField;
    qyClienteID_LOCALITA: TFloatField;
    qyClienteLOCALITA: TStringField;
    qyClientePROVINCIA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrCliente: TdmBrCliente;

implementation

{$R *.dfm}

{ TdmBrAutore }

end.
