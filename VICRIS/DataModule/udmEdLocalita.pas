unit udmEdLocalita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, MemDS, DBAccess, Ora, DBClient, Provider;

type
  TdmEdLocalita = class(TdmEdit)
    poLocalita: TDataSetProvider;
    cdsLocalita: TClientDataSet;
    dsLocalita: TDataSource;
    qyLocalita: TOraQuery;
    cdsLocalitaID_LOCALITA: TFloatField;
    cdsLocalitaLOCALITA: TStringField;
    cdsLocalitaCOD_USR: TStringField;
    cdsLocalitaDES_PDL: TStringField;
    cdsLocalitaDAT_AGG_REC: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmEdLocalita: TdmEdLocalita;

implementation

{$R *.dfm}

end.
