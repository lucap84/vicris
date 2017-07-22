unit udmEdOggetto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBClient, Provider, MemDS, DBAccess, Ora, uSupportLib;

type
  TdmEdOggetto = class(TdmEdit)
    qyOggetto: TOraQuery;
    poOggetto: TDataSetProvider;
    cdsOggetto: TClientDataSet;
    dsOggetto: TDataSource;
    cdsOggettoCOD_OGG: TStringField;
    cdsOggettoCOD_CDU: TStringField;
    cdsOggettoDES_OGG: TStringField;
    cdsOggettoDES_PDL: TStringField;
    cdsOggettoDAT_AGG_REC: TDateTimeField;
    cdsOggettoCOD_USR: TStringField;
    cdsOggettoCOD_UBI: TStringField;
  private
    { Private declarations }
  protected
    function dmCheckValidateData: boolean; override;
  public
    { Public declarations }
  end;

var
  dmEdOggetto: TdmEdOggetto;

implementation

{$R *.dfm}

{ TdmEdOggetto }

function TdmEdOggetto.dmCheckValidateData: boolean;
var
  AMsg : String;
begin
  Result := True;
  
  if cdsOggettoCOD_CDU.IsNull then
    AppendMsg(AMsg, 'Inserire il C.D.U.!');
  if cdsOggettoDES_OGG.IsNull then
    AppendMsg(AMsg, 'Inserire l''Oggetto!');

  if AMsg <> '' then
  begin
    MessageDlg(AMsg, mtError, [mbOK], 0);
    Result := False;
  end
  else
    inherited dmCheckValidateData;
end;

end.
