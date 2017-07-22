unit udmEdPromotore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBClient, Provider, MemDS, DBAccess, Ora, uSupportLib;

type
  TdmEdPromotore = class(TdmEdit)
    qyPromotore: TOraQuery;
    poPromotore: TDataSetProvider;
    cdsPromotore: TClientDataSet;
    dsPromotore: TDataSource;
    cdsPromotoreCOD_PMR: TStringField;
    cdsPromotoreDES_PMR: TStringField;
    cdsPromotoreDES_PDL: TStringField;
    cdsPromotoreDAT_AGG_REC: TDateTimeField;
    cdsPromotoreCOD_USR: TStringField;
    cdsPromotoreDES_IND: TStringField;
    cdsPromotoreCOD_NAZ: TStringField;
    cdsPromotoreCOD_CTA: TStringField;
    cdsPromotoreNUM_TEL_1: TStringField;
    cdsPromotoreNUM_TEL_2: TStringField;
    cdsPromotoreNUM_CEL: TStringField;
    cdsPromotoreNUM_FAX: TStringField;
    cdsPromotoreCOD_EML: TStringField;
    cdsPromotoreDES_NTE: TStringField;
  private
    { Private declarations }
  protected
    function dmCheckValidateData: boolean; override;
  public
    { Public declarations }
  end;

var
  dmEdPromotore: TdmEdPromotore;

implementation

{$R *.dfm}

{ TdmEdPromotore }

function TdmEdPromotore.dmCheckValidateData: boolean;
var
  AMsg : String;
begin
  Result := True;
  
  if cdsPromotoreDES_PMR.IsNull then
    AppendMsg(AMsg, 'Inserire l''Istituzione!');

  if AMsg <> '' then
  begin
    MessageDlg(AMsg, mtError, [mbOK], 0);
    Result := False;
  end
  else
    inherited dmCheckValidateData;
end;

end.
