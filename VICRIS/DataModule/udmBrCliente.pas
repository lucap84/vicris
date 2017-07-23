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
    qyClienteID_CLIENTE_OLD: TFloatField;
    qyClienteNOME: TStringField;
    qyClienteREFERENTE: TStringField;
    qyClienteINDIRIZZO: TStringField;
    qyClienteINDIRIZZO_SPEDIZIONE: TStringField;
    qyClienteCITTA: TStringField;
    qyClienteCAP: TStringField;
    qyClientePROVINCIA: TStringField;
    qyClienteTELEFONO: TStringField;
    qyClienteCELLULARE: TStringField;
    qyClienteFAX: TStringField;
    qyClienteMAIL: TStringField;
    qyClienteSITO: TStringField;
    qyClientePARTITA_IVA: TStringField;
    qyClienteCODICE_FISCALE: TStringField;
    qyClienteLOCALITA: TStringField;
    qyClienteBANCA: TStringField;
    qyClienteIBAN: TStringField;
    qyClienteCODICE_ABI: TStringField;
    qyClienteCODICE_CAB: TStringField;
    qyClienteNOTE: TStringField;
    qyClienteCOD_USR: TStringField;
    qyClienteDES_PDL: TStringField;
    qyClienteDAT_AGG_REC: TDateTimeField;
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
