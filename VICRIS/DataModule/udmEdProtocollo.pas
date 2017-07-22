unit udmEdProtocollo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEditAaa, DB, DBClient, Provider, MemDS, DBAccess, Ora, udmDBCore,
  udmGlobal, uSupportLib;

type
  TdmEdProtocollo = class(TdmEditAaa)
    qyProtocollo: TOraQuery;
    poProtocollo: TDataSetProvider;
    cdsProtocollo: TClientDataSet;
    dsProtocollo: TDataSource;
    qyProtocolloAAA_PTC: TFloatField;
    qyProtocolloFLG_TIP_PTC: TStringField;
    qyProtocolloCOD_PTC: TStringField;
    qyProtocolloDAT_PTC: TDateTimeField;
    qyProtocolloDAT_DOC: TDateTimeField;
    qyProtocolloDAT_FIN: TDateTimeField;
    qyProtocolloFLG_FMT_PTC: TStringField;
    qyProtocolloDES_OGG: TStringField;
    qyProtocolloCOD_NAZ: TStringField;
    qyProtocolloCOD_CTA: TStringField;
    qyProtocolloCOD_INC: TStringField;
    qyProtocolloCOD_PMR: TStringField;
    qyProtocolloDES_NTE: TStringField;
    qyProtocolloCOD_USR: TStringField;
    qyProtocolloDES_PDL: TStringField;
    qyProtocolloDAT_AGG_REC: TDateTimeField;
    qyProtocolloDES_NAZ: TStringField;
    qyProtocolloDES_CTA: TStringField;
    qyProtocolloDES_PMR: TStringField;
    qyProtocolloDES_INC: TStringField;
    qyProtocolloDES_TIP_PTC: TStringField;
    qyProtocolloDES_FMT_PTC: TStringField;
    qyProtocolloCOD: TStringField;
    cdsProtocolloAAA_PTC: TFloatField;
    cdsProtocolloFLG_TIP_PTC: TStringField;
    cdsProtocolloCOD_PTC: TStringField;
    cdsProtocolloDAT_PTC: TDateTimeField;
    cdsProtocolloDAT_DOC: TDateTimeField;
    cdsProtocolloDAT_FIN: TDateTimeField;
    cdsProtocolloFLG_FMT_PTC: TStringField;
    cdsProtocolloDES_OGG: TStringField;
    cdsProtocolloCOD_NAZ: TStringField;
    cdsProtocolloCOD_CTA: TStringField;
    cdsProtocolloCOD_INC: TStringField;
    cdsProtocolloCOD_PMR: TStringField;
    cdsProtocolloDES_NTE: TStringField;
    cdsProtocolloCOD_USR: TStringField;
    cdsProtocolloDES_PDL: TStringField;
    cdsProtocolloDAT_AGG_REC: TDateTimeField;
    cdsProtocolloDES_NAZ: TStringField;
    cdsProtocolloDES_CTA: TStringField;
    cdsProtocolloDES_PMR: TStringField;
    cdsProtocolloDES_INC: TStringField;
    cdsProtocolloDES_TIP_PTC: TStringField;
    cdsProtocolloDES_FMT_PTC: TStringField;
    cdsProtocolloCOD: TStringField;
    qyProtocolloCOD_AUT: TStringField;
    qyProtocolloDES_AUT: TStringField;
    cdsProtocolloCOD_AUT: TStringField;
    cdsProtocolloDES_AUT: TStringField;
    procedure poProtocolloGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
  private
    { Private declarations }
  protected
    function  dmAggNumPrgCustom: String; override;

    procedure dmAfterInsert(DataSet: TDataSet); override;
    procedure dmBeforePost(DataSet: TDataSet); override;
    function  dmCheckValidateData: boolean;     override;
  public
    { Public declarations }
  end;

var
  dmEdProtocollo: TdmEdProtocollo;

implementation

{$R *.dfm}

procedure TdmEdProtocollo.dmAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if DataSet = cdsProtocollo then
  begin
    cdsProtocolloDAT_PTC.AsDateTime   := Date;
    cdsProtocolloFLG_TIP_PTC.AsString := 'A';
    cdsProtocolloFLG_FMT_PTC.AsString := '0';
    cdsProtocolloAAA_PTC.AsInteger    := StrToInt(FormatDateTime('yyyy', cdsProtocolloDAT_PTC.AsDateTime));
  end;
end;

function TdmEdProtocollo.dmAggNumPrgCustom: String;
begin
  Result := dmGlobal.AggNumPrgAaa(cdsProtocolloAAA_PTC.AsInteger, cdsProtocolloFLG_TIP_PTC.AsString, 'cod_ptc');
end;

procedure TdmEdProtocollo.dmBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet = cdsProtocollo then
    if hdmState = hdmInsert then
      cdsProtocolloAAA_PTC.AsInteger := StrToInt(FormatDateTime('yyyy', cdsProtocolloDAT_PTC.AsDateTime));
end;

function TdmEdProtocollo.dmCheckValidateData: boolean;
var
  AMsg : String;
begin
  AMsg := '';

  if (not cdsProtocolloCOD_INC.IsNull) and cdsProtocolloCOD_PMR.IsNull then
    AppendMsg(AMsg, 'Inserire l''Incarico.');

  if cdsProtocolloCOD_INC.IsNull and cdsProtocolloCOD_PMR.IsNull and cdsProtocolloCOD_AUT.IsNull then
    AppendMsg(AMsg, 'Inserire i dati mancanti.');

  if AMsg <> '' then
  begin
    MessageDlg(AMsg, mtError, [mbOK], 0);
    Result := False;
  end
  else
    Result := inherited dmCheckValidateData;
end;

procedure TdmEdProtocollo.poProtocolloGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  inherited;
  TableName := 'PROTOCOLLO';
end;

end.
