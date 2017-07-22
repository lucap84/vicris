unit udmEdRuolo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBAccess, Ora, DBClient, Provider, MemDS, udmGlobal,
  uSupportLib;

type
  TdmEdRuolo = class(TdmEdit)
    qyRuolo: TOraQuery;
    poRuolo: TDataSetProvider;
    cdsRuolo: TClientDataSet;
    dsRuolo: TDataSource;
    qyRuoloNPA_ROL: TFloatField;
    qyRuoloCOD_INC: TStringField;
    qyRuoloDES_INC: TStringField;
    qyRuoloCOD_PMR: TStringField;
    qyRuoloDES_PMR: TStringField;
    qyRuoloDAT_INI: TDateTimeField;
    qyRuoloDAT_FIN: TDateTimeField;
    qyRuoloDES_NTE: TStringField;
    qyRuoloCOD_USR: TStringField;
    qyRuoloDES_PDL: TStringField;
    qyRuoloDAT_AGG_REC: TDateTimeField;
    cdsRuoloNPA_ROL: TFloatField;
    cdsRuoloCOD_INC: TStringField;
    cdsRuoloDES_INC: TStringField;
    cdsRuoloCOD_PMR: TStringField;
    cdsRuoloDES_PMR: TStringField;
    cdsRuoloDAT_INI: TDateTimeField;
    cdsRuoloDAT_FIN: TDateTimeField;
    cdsRuoloDES_NTE: TStringField;
    cdsRuoloCOD_USR: TStringField;
    cdsRuoloDES_PDL: TStringField;
    cdsRuoloDAT_AGG_REC: TDateTimeField;
    qyRuoloCOD_AUT: TStringField;
    qyRuoloDES_AUT: TStringField;
    cdsRuoloCOD_AUT: TStringField;
    cdsRuoloDES_AUT: TStringField;
    procedure poRuoloGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
  private
    { Private declarations }
  protected
    procedure dmAfterInsert(DataSet: TDataSet); override;
    function  dmCheckValidateData: boolean;     override;
  public
    { Public declarations }
  end;

var
  dmEdRuolo: TdmEdRuolo;

implementation

{$R *.dfm}

procedure TdmEdRuolo.dmAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if DataSet = cdsRuolo then
  begin
    cdsRuoloNPA_ROL.AsInteger := dmGlobal.GetNpaDet;
    cdsRuoloDAT_INI.Clear;
    cdsRuoloDAT_FIN.Clear;
  end;
end;

function TdmEdRuolo.dmCheckValidateData: boolean;
var
  AMsg : String;
begin
  if cdsRuoloCOD_PMR.IsNull then
    AppendMsg(AMsg, 'Inserire l''Istituzione');
  if cdsRuoloCOD_AUT.IsNull then
    AppendMsg(AMsg, 'Inserire la Persona');

  if not cdsRuoloDAT_FIN.IsNull then
  begin
    if cdsRuoloDAT_INI.IsNull then
      AppendMsg(AMsg, 'Manca la data di Inizio del Ruolo');
    if (cdsRuoloDAT_INI.AsDateTime > cdsRuoloDAT_FIN.AsDateTime) then
      AppendMsg(AMsg, 'Date incongruenti');
  end;

  if AMsg <> '' then
  begin
    MessageDlg(AMsg, mtError, [mbOK], 0);
    Result := False;
  end
  else
    Result := inherited dmCheckValidateData;
end;

procedure TdmEdRuolo.poRuoloGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  inherited;
  TableName := 'RUOLO';
end;

end.
