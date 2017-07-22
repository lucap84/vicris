unit udmEdUbi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBAccess, Ora, DBClient, Provider, MemDS, uSupportLib;

type
  TdmEdUbi = class(TdmEdit)
    qyUbi: TOraQuery;
    poUbi: TDataSetProvider;
    cdsUbi: TClientDataSet;
    dsUbi: TDataSource;
    cdsUbiCOD_UBI: TStringField;
    cdsUbiDES_UBI: TStringField;
    cdsUbiCOD_USR: TStringField;
    cdsUbiDES_PDL: TStringField;
    cdsUbiDAT_AGG_REC: TDateTimeField;
  private
    { Private declarations }
  protected
    function dmCheckValidateData: boolean; override;
  public
    { Public declarations }
  end;

var
  dmEdUbi: TdmEdUbi;

implementation

{$R *.dfm}

{ TdmEdUbi }

function TdmEdUbi.dmCheckValidateData: boolean;
var
  AMsg : String;
begin
  Result := True;
  
  if cdsUbiDES_UBI.IsNull then
    AppendMsg(AMsg, 'Inserire l''Ubicazione!');

  if AMsg <> '' then
  begin
    MessageDlg(AMsg, mtError, [mbOK], 0);
    Result := False;
  end
  else
    inherited dmCheckValidateData;
end;

end.
