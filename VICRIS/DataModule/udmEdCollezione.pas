unit udmEdCollezione;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBClient, Provider, MemDS, DBAccess, Ora, uSupportLib;

type
  TdmEdCollezione = class(TdmEdit)
    qyCollezione: TOraQuery;
    poCollezione: TDataSetProvider;
    cdsCollezione: TClientDataSet;
    dsCollezione: TDataSource;
    cdsCollezioneCOD_CLZ: TStringField;
    cdsCollezioneDES_CLZ: TStringField;
    cdsCollezioneDES_PDL: TStringField;
    cdsCollezioneDAT_AGG_REC: TDateTimeField;
    cdsCollezioneCOD_USR: TStringField;
  private
    { Private declarations }
  protected
    function dmCheckValidateData: boolean; override;
  public
    { Public declarations }
  end;

var
  dmEdCollezione: TdmEdCollezione;

implementation

{$R *.dfm}

{ TdmEdCollezione }

function TdmEdCollezione.dmCheckValidateData: boolean;
var
  AMsg : String;
begin
  Result := True;
  
  if cdsCollezioneDES_CLZ.IsNull then
    AppendMsg(AMsg, 'Inserire la Collezione!');

  if AMsg <> '' then
  begin
    MessageDlg(AMsg, mtError, [mbOK], 0);
    Result := False;
  end
  else
    inherited dmCheckValidateData;
end;

end.
