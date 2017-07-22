unit udmBrAlarma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, MemDS, DBAccess, Ora;

type
  TdmBrAlarma = class(TdmBrowse)
    qyAlarma: TOraQuery;
    dsAlarma: TDataSource;
    qyAlarmaCOD_EVT: TStringField;
    qyAlarmaDES_EVT: TStringField;
    qyAlarmaDES_STT: TStringField;
    qyAlarmaDES_FRQ: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrAlarma: TdmBrAlarma;

implementation

{$R *.dfm}

end.
