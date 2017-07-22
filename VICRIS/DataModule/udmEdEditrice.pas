unit udmEdEditrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBClient, Provider, MemDS, DBAccess, Ora, uSupportLib;

type
  TdmEdEditrice = class(TdmEdit)
    qyEditrice: TOraQuery;
    poEditrice: TDataSetProvider;
    cdsEditrice: TClientDataSet;
    dsEditrice: TDataSource;
    cdsEditriceCOD_CED: TStringField;
    cdsEditriceCOD_NAZ: TStringField;
    cdsEditriceCOD_CTA: TStringField;
    cdsEditriceDES_CED: TStringField;
    cdsEditriceDES_PDL: TStringField;
    cdsEditriceDAT_AGG_REC: TDateTimeField;
    cdsEditriceCOD_USR: TStringField;
  private
    { Private declarations }
  protected
    function dmCheckValidateData: boolean; override;
  public
    { Public declarations }
  end;

var
  dmEdEditrice: TdmEdEditrice;

implementation

{$R *.dfm}

{ TdmEdEditrice }

function TdmEdEditrice.dmCheckValidateData: boolean;
var
  AMsg : String;
begin
  Result := True;
  
  if cdsEditriceDES_CED.IsNull then
    AppendMsg(AMsg, 'Inserire la Casa Editrice!');

  if AMsg <> '' then
  begin
    MessageDlg(AMsg, mtError, [mbOK], 0);
    Result := False;
  end
  else
    inherited dmCheckValidateData;
end;

end.
