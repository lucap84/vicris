unit udmEdCitta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBClient, Provider, MemDS, DBAccess, Ora, uSupportLib;

type
  TdmEdCitta = class(TdmEdit)
    qyCitta: TOraQuery;
    poCitta: TDataSetProvider;
    cdsCitta: TClientDataSet;
    dsCitta: TDataSource;
    cdsCittaCOD_NAZ: TStringField;
    cdsCittaCOD_CTA: TStringField;
    cdsCittaDES_CTA: TStringField;
    cdsCittaDES_PDL: TStringField;
    cdsCittaDAT_AGG_REC: TDateTimeField;
    cdsCittaCOD_USR: TStringField;
  private
    { Private declarations }
  protected
    function dmCheckValidateData: boolean; override;
  public
    { Public declarations }
  end;

var
  dmEdCitta: TdmEdCitta;

implementation

{$R *.dfm}

{ TdmEdCitta }

function TdmEdCitta.dmCheckValidateData: boolean;
var
  AMsg : String;
begin
  Result := True;
  
  if cdsCittaCOD_NAZ.IsNull then
    AppendMsg(AMsg, 'Inserire la Nazione!');
  if cdsCittaDES_CTA.IsNull then
    AppendMsg(AMsg, 'Inserire la Città!');

  if AMsg <> '' then
  begin
    MessageDlg(AMsg, mtError, [mbOK], 0);
    Result := False;
  end
  else
    inherited dmCheckValidateData;
end;

end.
