unit udmBrEvento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, MemDS, DBAccess, Ora;

type
  TdmBrEvento = class(TdmBrowse)
    qyEvento: TOraQuery;
    dsEvento: TDataSource;
    qyEventoCOD_EVT: TStringField;
    qyEventoDES_EVT: TStringField;
    qyEventoDAT_EVT: TDateTimeField;
    qyEventoCOD_USR: TStringField;
    qyEventoDES_PDL: TStringField;
    qyEventoDAT_AGG_REC: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrEvento: TdmBrEvento;

implementation

{$R *.dfm}

end.
