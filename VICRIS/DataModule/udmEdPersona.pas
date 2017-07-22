unit udmEdPersona;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBAccess, Ora, DBClient, Provider, MemDS, uSupportLib;

type
  TdmEdPersona = class(TdmEdit)
    qyPersona: TOraQuery;
    poPersona: TDataSetProvider;
    cdsPersona: TClientDataSet;
    dsPersona: TDataSource;
    qyPersonaDES_NOM: TStringField;
    qyPersonaDES_COG: TStringField;
    qyPersonaDES_IND: TStringField;
    qyPersonaNUM_TEL_1: TStringField;
    qyPersonaNUM_TEL_2: TStringField;
    qyPersonaNUM_CEL: TStringField;
    qyPersonaNUM_FAX: TStringField;
    qyPersonaFLG_TIT: TStringField;
    qyPersonaCOD_NAZ: TStringField;
    qyPersonaCOD_CTA: TStringField;
    qyPersonaDES_PDL: TStringField;
    qyPersonaCOD_USR: TStringField;
    qyPersonaDAT_AGG_REC: TDateTimeField;
    qyPersonaDES_NAZ: TStringField;
    qyPersonaDES_CTA: TStringField;
    qyPersonaDES_TIT: TStringField;
    cdsPersonaDES_NOM: TStringField;
    cdsPersonaDES_COG: TStringField;
    cdsPersonaDES_IND: TStringField;
    cdsPersonaNUM_TEL_1: TStringField;
    cdsPersonaNUM_TEL_2: TStringField;
    cdsPersonaNUM_CEL: TStringField;
    cdsPersonaNUM_FAX: TStringField;
    cdsPersonaFLG_TIT: TStringField;
    cdsPersonaCOD_NAZ: TStringField;
    cdsPersonaCOD_CTA: TStringField;
    cdsPersonaDES_PDL: TStringField;
    cdsPersonaCOD_USR: TStringField;
    cdsPersonaDAT_AGG_REC: TDateTimeField;
    cdsPersonaDES_NAZ: TStringField;
    cdsPersonaDES_CTA: TStringField;
    cdsPersonaDES_TIT: TStringField;
    qyPersonaCOD_AUT: TStringField;
    cdsPersonaCOD_AUT: TStringField;
    qyRicorrenza: TOraQuery;
    poRicorrenza: TDataSetProvider;
    cdsRicorrenza: TClientDataSet;
    dsRicorrenza: TDataSource;
    cdsRicorrenzaCOD_AUT: TStringField;
    cdsRicorrenzaCOD_EVT: TStringField;
    cdsRicorrenzaCOD_USR: TStringField;
    cdsRicorrenzaDES_PDL: TStringField;
    cdsRicorrenzaDAT_AGG_REC: TDateTimeField;
    cdsRicorrenzaDAT_EVT: TDateTimeField;
    cdsRicorrenzades_evt: TStringField;
    qyEvt: TOraQuery;
    qyEvtDES_EVT: TStringField;
    cdsPersonacod_evt: TStringField;
    cdsPersonadat_evt: TDateField;
    qyPersonaDES_EML: TStringField;
    cdsPersonaDES_EML: TStringField;
    procedure poPersonaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsRicorrenzaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure dmAfterInsert(DataSet: TDataSet); override;
    function  dmCheckValidateData: boolean; override;
  public
    { Public declarations }
  end;

var
  dmEdPersona: TdmEdPersona;

implementation

{$R *.dfm}

{ TdmEdPersona }

procedure TdmEdPersona.cdsRicorrenzaCalcFields(DataSet: TDataSet);
begin
  inherited;
  qyEvt.ParamByName('Cod_Evt').AsString := cdsRicorrenzaCOD_EVT.AsString;
  dmDsRefresh(qyEvt);
  cdsRicorrenzades_evt.AsString := qyEvtDES_EVT.AsString;
end;

procedure TdmEdPersona.dmAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if DataSet = cdsPersona then
    cdsPersonaFLG_TIT.AsString := '0';
end;

function TdmEdPersona.dmCheckValidateData: boolean;
var
  AMsg : String;
begin
  Result := True;

  if cdsPersonaDES_NOM.IsNull or cdsPersonaDES_COG.IsNull then
    AppendMsg(AMsg, 'Inserire Nome e Cognome!');

  if AMsg <> '' then
  begin
    MessageDlg(AMsg, mtError, [mbOK], 0);
    Result := False;
  end
  else
    inherited dmCheckValidateData;
end;

procedure TdmEdPersona.poPersonaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  inherited;
  TableName := 'AUTORE';
end;

end.
