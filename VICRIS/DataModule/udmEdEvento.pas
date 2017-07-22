unit udmEdEvento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBAccess, Ora, DBClient, Provider, MemDS, uSupportLib;

type
  TdmEdEvento = class(TdmEdit)
    qyEvento: TOraQuery;
    poEvento: TDataSetProvider;
    cdsEvento: TClientDataSet;
    dsEvento: TDataSource;
    cdsEventoCOD_EVT: TStringField;
    cdsEventoDES_EVT: TStringField;
    cdsEventoDAT_EVT: TDateTimeField;
    cdsEventoCOD_USR: TStringField;
    cdsEventoDES_PDL: TStringField;
    cdsEventoDAT_AGG_REC: TDateTimeField;
  private
    { Private declarations }
  protected
    function dmCheckValidateData: boolean; override;
  public
    { Public declarations }
  end;

var
  dmEdEvento: TdmEdEvento;

implementation

{$R *.dfm}

{ TdmEdit2 }

function TdmEdEvento.dmCheckValidateData: boolean;
var
  AMsg : String;
begin
  Result := True;
  
  if cdsEventoDES_EVT.IsNull then
    AppendMsg(AMsg, 'Inserire l''Evento!');

  if AMsg <> '' then
  begin
    MessageDlg(AMsg, mtError, [mbOK], 0);
    Result := False;
  end
  else
    inherited dmCheckValidateData;
end;

end.
