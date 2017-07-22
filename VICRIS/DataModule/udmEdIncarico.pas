unit udmEdIncarico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBClient, Provider, MemDS, DBAccess, Ora, uSupportLib;

type
  TdmEdIncarico = class(TdmEdit)
    qyIncarico: TOraQuery;
    poIncarico: TDataSetProvider;
    cdsIncarico: TClientDataSet;
    dsIncarico: TDataSource;
    cdsIncaricoCOD_INC: TStringField;
    cdsIncaricoDES_INC: TStringField;
    cdsIncaricoCOD_USR: TStringField;
    cdsIncaricoDES_PDL: TStringField;
    cdsIncaricoDAT_AGG_REC: TDateTimeField;
  private
    { Private declarations }
  protected
    function dmCheckValidateData: boolean; override;
  public
    { Public declarations }
  end;

var
  dmEdIncarico: TdmEdIncarico;

implementation

{$R *.dfm}

{ TdmEdIncarico }

function TdmEdIncarico.dmCheckValidateData: boolean;
var
  AMsg : String;
begin
  Result := True;
  
  if cdsIncaricoDES_INC.IsNull then
    AppendMsg(AMsg, 'Inserire l''Incarico!');

  if AMsg <> '' then
  begin
    MessageDlg(AMsg, mtError, [mbOK], 0);
    Result := False;
  end
  else
    inherited dmCheckValidateData;
end;

end.
