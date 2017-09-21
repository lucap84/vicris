unit udmBrLocalita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, MemDS, DBAccess, Ora;

type
  TdmBrLocalita = class(TdmBrowse)
    qyLocalita: TOraQuery;
    dsLocalita: TDataSource;
    qyLocalitaID_LOCALITA: TFloatField;
    qyLocalitaCOD_USR: TStringField;
    qyLocalitaDES_PDL: TStringField;
    qyLocalitaDAT_AGG_REC: TDateTimeField;
    qyLocalitaLOCALITA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrLocalita: TdmBrLocalita;

implementation

{$R *.dfm}

end.
