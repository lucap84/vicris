unit udmEdAlarma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBClient, Provider, MemDS, DBAccess, Ora;

type
  TdmEdAlarma = class(TdmEdit)
    qyAlarma: TOraQuery;
    poAlarma: TDataSetProvider;
    cdsAlarma: TClientDataSet;
    dsAlarma: TDataSource;
    cdsAlarmaCOD_EVT: TStringField;
    cdsAlarmaFLG_FRQ: TStringField;
    cdsAlarmaFLG_ATV: TStringField;
    cdsAlarmaCOD_USR: TStringField;
    cdsAlarmaDES_PDL: TStringField;
    cdsAlarmaDAT_AGG_REC: TDateTimeField;
    cdsAlarmaDES_OGG: TStringField;
    cdsAlarmaDES_TXT: TStringField;
  private
    { Private declarations }
  protected
    procedure dmAfterInsert(DataSet: TDataSet); override;
  public
    { Public declarations }
  end;

var
  dmEdAlarma: TdmEdAlarma;

implementation

{$R *.dfm}

{ TdmEdAlarma }

procedure TdmEdAlarma.dmAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if DataSet = cdsAlarma then
  begin
    cdsAlarmaFLG_FRQ.AsString := '0';
    cdsAlarmaFLG_ATV.AsString := '0';
  end;
end;

end.
