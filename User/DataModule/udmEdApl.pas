unit udmEdApl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBAccess, Ora, DBClient, Provider, MemDS;

type
  TdmEdApl = class(TdmEdit)
    qyApl: TOraQuery;
    poApl: TDataSetProvider;
    cdsApl: TClientDataSet;
    dsApl: TDataSource;
    cdsAplCOD_APL: TStringField;
    cdsAplDES_APL: TStringField;
    cdsAplDBS_NOM: TStringField;
    cdsAplDBS_USR: TStringField;
    cdsAplDBS_PWD: TStringField;
    cdsAplDES_PDL: TStringField;
    cdsAplDAT_AGG_REC: TDateTimeField;
    cdsAplFLG_TIP_USR: TStringField;
  private
    { Private declarations }
  protected
    procedure dmAfterInsert(DataSet: TDataSet); override;
  public
    { Public declarations }
  end;

var
  dmEdApl: TdmEdApl;

implementation

{$R *.dfm}

{ TdmEdApl }

procedure TdmEdApl.dmAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if DataSet = cdsApl then
    cdsAplFLG_TIP_USR.AsString := '0';
end;

end.
