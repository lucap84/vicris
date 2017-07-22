unit udmEdPubblicazione;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, MemDS, DBAccess, Ora, DBClient, Provider, uSupportLib;

type
  TdmEdPubblicazione = class(TdmEdit)
    poPubblicazione: TDataSetProvider;
    cdsPubblicazione: TClientDataSet;
    dsPubblicazione: TDataSource;
    qyPubblicazione: TOraQuery;
    cdsPubblicazioneCOD_PUB: TStringField;
    cdsPubblicazioneDES_PUB: TStringField;
    cdsPubblicazioneFLG_TIP_PUB: TStringField;
    cdsPubblicazioneFLG_TIP_AUT: TStringField;
    cdsPubblicazioneCOD_NAZ: TStringField;
    cdsPubblicazioneCOD_CTA: TStringField;
    cdsPubblicazioneCOD_ISB: TStringField;
    cdsPubblicazioneAAA_PUB: TFloatField;
    cdsPubblicazioneNUM_EDZ: TStringField;
    cdsPubblicazioneNUM_PAG: TFloatField;
    cdsPubblicazioneDES_NTE: TStringField;
    cdsPubblicazioneCOD_SCF: TStringField;
    cdsPubblicazioneCOD_LVL: TStringField;
    cdsPubblicazioneCOD_OGG: TStringField;
    cdsPubblicazioneCOD_CED: TStringField;
    cdsPubblicazioneCOD_CLZ: TStringField;
    cdsPubblicazioneCOD_PMR: TStringField;
    cdsPubblicazioneDES_PDL: TStringField;
    cdsPubblicazioneDAT_AGG_REC: TDateTimeField;
    qyDetAutPub: TOraQuery;
    poDetAutPub: TDataSetProvider;
    cdsDetAutPub: TClientDataSet;
    dsDetAutPub: TDataSource;
    cdsDetAutPubCOD_PUB: TStringField;
    cdsDetAutPubCOD_AUT: TStringField;
    cdsDetAutPubDES_PDL: TStringField;
    cdsDetAutPubDAT_AGG_REC: TDateTimeField;
    cdsDetAutPubdes_nom_aut: TStringField;
    cdsDetAutPubdes_cog_aut: TStringField;
    qyAut: TOraQuery;
    qyAutDES_NOM: TStringField;
    qyAutDES_COG: TStringField;
    cdsPubblicazionecod_aut: TStringField;
    qyPubblicazioneCOD_PUB: TStringField;
    qyPubblicazioneDES_PUB: TStringField;
    qyPubblicazioneFLG_TIP_PUB: TStringField;
    qyPubblicazioneFLG_TIP_AUT: TStringField;
    qyPubblicazioneCOD_NAZ: TStringField;
    qyPubblicazioneCOD_CTA: TStringField;
    qyPubblicazioneCOD_ISB: TStringField;
    qyPubblicazioneAAA_PUB: TFloatField;
    qyPubblicazioneNUM_EDZ: TStringField;
    qyPubblicazioneNUM_PAG: TFloatField;
    qyPubblicazioneDES_NTE: TStringField;
    qyPubblicazioneCOD_SCF: TStringField;
    qyPubblicazioneCOD_LVL: TStringField;
    qyPubblicazioneCOD_OGG: TStringField;
    qyPubblicazioneCOD_CED: TStringField;
    qyPubblicazioneCOD_CLZ: TStringField;
    qyPubblicazioneCOD_PMR: TStringField;
    qyPubblicazioneDES_PDL: TStringField;
    qyPubblicazioneDAT_AGG_REC: TDateTimeField;
    qyPubblicazioneDES_NAZ: TStringField;
    qyPubblicazioneDES_CTA: TStringField;
    qyPubblicazioneDES_CDU: TStringField;
    qyPubblicazioneDES_CED: TStringField;
    qyPubblicazioneDES_CLZ: TStringField;
    qyPubblicazioneDES_PMR: TStringField;
    qyPubblicazioneDES_TIP_PUB: TStringField;
    qyPubblicazioneDES_TIP_AUT: TStringField;
    cdsPubblicazioneDES_NAZ: TStringField;
    cdsPubblicazioneDES_CTA: TStringField;
    cdsPubblicazioneDES_CDU: TStringField;
    cdsPubblicazioneDES_CED: TStringField;
    cdsPubblicazioneDES_CLZ: TStringField;
    cdsPubblicazioneDES_PMR: TStringField;
    cdsPubblicazioneDES_TIP_PUB: TStringField;
    cdsPubblicazioneDES_TIP_AUT: TStringField;
    qyPubblicazioneCOD_USR: TStringField;
    cdsPubblicazioneCOD_USR: TStringField;
    cdsDetAutPubCOD_USR: TStringField;
    qyCheckDupPub: TOraQuery;
    qyCheckDupPubNUM: TFloatField;
    qyPubblicazioneCOD_UBI: TStringField;
    qyPubblicazioneDES_UBI: TStringField;
    cdsPubblicazioneCOD_UBI: TStringField;
    cdsPubblicazioneDES_UBI: TStringField;
    qyPubblicazioneDES_TAG: TStringField;
    cdsPubblicazioneDES_TAG: TStringField;
    procedure cdsDetAutPubCalcFields(DataSet: TDataSet);
    procedure poPubblicazioneGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
  private
    { Private declarations }
  protected
    procedure dmAfterInsert(DataSet: TDataSet); override;
    procedure dmAfterOpen(DataSet: TDataSet);   override;
    function  dmCheckValidateData: boolean;     override;
  public
    { Public declarations }
  end;

var
  dmEdPubblicazione: TdmEdPubblicazione;

implementation

{$R *.dfm}

{ TdmEdPubblicazione }

procedure TdmEdPubblicazione.dmAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if DataSet = cdsPubblicazione then
  begin
    cdsPubblicazioneFLG_TIP_PUB.AsString := '0';
    cdsPubblicazioneFLG_TIP_AUT.AsString := '0';
  end;
end;

procedure TdmEdPubblicazione.cdsDetAutPubCalcFields(DataSet: TDataSet);
begin
  inherited;
  qyAut.ParamByName('Cod_Aut').AsString := cdsDetAutPubCOD_AUT.AsString;
  dmDsRefresh(qyAut);
  cdsDetAutPubdes_nom_aut.AsString := qyAutDES_NOM.AsString;
  cdsDetAutPubdes_cog_aut.AsString := qyAutDES_COG.AsString;
end;

function TdmEdPubblicazione.dmCheckValidateData: boolean;
var
  AMsg : String;
begin
  AMsg := '';

  if cdsPubblicazioneDES_PUB.IsNull then
    AppendMsg(AMsg, 'Inserire il Titolo!');

  if AMsg <> '' then
  begin
    MessageDlg(AMsg, mtError, [mbOK], 0);
    Result := False;
  end
  else
    Result := inherited dmCheckValidateData;

  if Result then
    if hNumManPrv then
      cdsPubblicazioneCOD_PUB.AsString := FillZeroesLeft(cdsPubblicazioneCOD_PUB.AsString, 6, '0');
end;

procedure TdmEdPubblicazione.poPubblicazioneGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  inherited;
  TableName := 'PUBBLICAZIONE';
end;

procedure TdmEdPubblicazione.dmAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if DataSet = cdsPubblicazione then
    qyCheckDupPub.ParamByName('Cod_Pub_Ori').AsString := cdsPubblicazioneCOD_PUB.AsString;
end;

end.
