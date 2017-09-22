unit udmEdProvincia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBClient, Provider, MemDS, DBAccess, Ora;

type
  TdmEdProvincia = class(TdmEdit)
    qyProvincia: TOraQuery;
    poProvincia: TDataSetProvider;
    cdsProvincia: TClientDataSet;
    dsProvincia: TDataSource;
    cdsProvinciaID_PROVINCIA: TFloatField;
    cdsProvinciaPROVINCIA: TStringField;
    cdsProvinciaCOD_USR: TStringField;
    cdsProvinciaDES_PDL: TStringField;
    cdsProvinciaDAT_AGG_REC: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmEdProvincia: TdmEdProvincia;

implementation

{$R *.dfm}

end.
