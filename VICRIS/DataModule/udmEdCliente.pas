unit udmEdCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBClient, Provider, MemDS, DBAccess, Ora, uSupportLib,
  udmGlobal;

type
  TdmEdCliente = class(TdmEdit)
    qyCliente: TOraQuery;
    poCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    cdsClienteID_CLIENTE: TFloatField;
    cdsClienteID_CLIENTE_OLD: TFloatField;
    cdsClienteNOME: TStringField;
    cdsClienteREFERENTE: TStringField;
    cdsClienteINDIRIZZO: TStringField;
    cdsClienteINDIRIZZO_SPEDIZIONE: TStringField;
    cdsClienteCITTA: TStringField;
    cdsClienteCAP: TStringField;
    cdsClientePROVINCIA: TStringField;
    cdsClienteTELEFONO: TStringField;
    cdsClienteCELLULARE: TStringField;
    cdsClienteFAX: TStringField;
    cdsClienteMAIL: TStringField;
    cdsClienteSITO: TStringField;
    cdsClientePARTITA_IVA: TStringField;
    cdsClienteCODICE_FISCALE: TStringField;
    cdsClienteLOCALITA: TStringField;
    cdsClienteBANCA: TStringField;
    cdsClienteIBAN: TStringField;
    cdsClienteCODICE_ABI: TStringField;
    cdsClienteCODICE_CAB: TStringField;
    cdsClienteNOTE: TStringField;
    cdsClienteCOD_USR: TStringField;
    cdsClienteDES_PDL: TStringField;
    cdsClienteDAT_AGG_REC: TDateTimeField;
    qyCommenti: TOraQuery;
    poCommenti: TDataSetProvider;
    cdsCommenti: TClientDataSet;
    dsCommenti: TDataSource;
    cdsCommentiID_COMMENTO: TFloatField;
    cdsCommentiID_COMMENTO_OLD: TFloatField;
    cdsCommentiID_CLIENTE_OLD: TFloatField;
    cdsCommentiID_CLIENTE: TFloatField;
    cdsCommentiDATA_COMMENTO: TDateTimeField;
    cdsCommentiCOMMENTO: TStringField;
    cdsCommentiCOD_USR: TStringField;
    cdsCommentiDES_PDL: TStringField;
    cdsCommentiDAT_AGG_REC: TDateTimeField;
  private
    { Private declarations }
  protected
    function dmCheckValidateData: boolean; override;
    procedure dmAfterInsert(DataSet: TDataSet); override;
  public
    { Public declarations }
  end;

var
  dmEdCliente: TdmEdCliente;

implementation

{$R *.dfm}

{ TdmEdCliente }

procedure TdmEdCliente.dmAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if DataSet = cdsCommenti then
    cdsCommentiID_COMMENTO.AsInteger := dmGlobal.GetNpaDet;
end;

function TdmEdCliente.dmCheckValidateData: boolean;
var
  AMsg : String;
begin
  AMsg   := '';
  Result := True;

  if AMsg <> '' then
  begin
    MessageDlg(AMsg, mtError, [mbOK], 0);
    Result := False;
  end
  else
    inherited dmCheckValidateData;
end;

end.
