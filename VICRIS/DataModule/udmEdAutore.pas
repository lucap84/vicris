unit udmEdAutore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBClient, Provider, MemDS, DBAccess, Ora, uSupportLib;

type
  TdmEdAutore = class(TdmEdit)
    qyAutore: TOraQuery;
    poAutore: TDataSetProvider;
    cdsAutore: TClientDataSet;
    dsAutore: TDataSource;
    cdsAutoreCOD_AUT: TStringField;
    cdsAutoreDES_NOM: TStringField;
    cdsAutoreDES_COG: TStringField;
    cdsAutoreDES_NTE: TStringField;
    cdsAutoreDES_PDL: TStringField;
    cdsAutoreDAT_AGG_REC: TDateTimeField;
    qyDetAutPub: TOraQuery;
    qyDetAutPubCOD_AUT: TStringField;
    qyDetAutPubCOD_PUB: TStringField;
    qyDetAutPubDES_PUB: TStringField;
    dsDetAutPub: TDataSource;
    cdsAutoreCOD_USR: TStringField;
    cdsAutoreFLG_TIT: TStringField;
  private
    { Private declarations }
  protected
    procedure dmAfterInsert(DataSet: TDataSet); override;
    function dmCheckValidateData: boolean; override;
  public
    { Public declarations }
  end;

var
  dmEdAutore: TdmEdAutore;

implementation

{$R *.dfm}

{ TdmEdAutore }

procedure TdmEdAutore.dmAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if DataSet = cdsAutore then
    cdsAutoreFLG_TIT.AsString := '0';
end;

function TdmEdAutore.dmCheckValidateData: boolean;
var
  AMsg : String;
begin
  Result := True;
  
  if cdsAutoreDES_NOM.IsNull then
    AppendMsg(AMsg, 'Inserire il nome!');
  if cdsAutoreDES_COG.IsNull then
    AppendMsg(AMsg, 'Inserire il cognome!');

  if AMsg <> '' then
  begin
    MessageDlg(AMsg, mtError, [mbOK], 0);
    Result := False;
  end
  else
    inherited dmCheckValidateData;
end;

end.
