unit udmBrProvincia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, MemDS, DBAccess, Ora;

type
  TdmBrProvincia = class(TdmBrowse)
    qyProvincia: TOraQuery;
    dsProvincia: TDataSource;
    qyProvinciaID_PROVINCIA: TFloatField;
    qyProvinciaPROVINCIA: TStringField;
    qyProvinciaCOD_USR: TStringField;
    qyProvinciaDES_PDL: TStringField;
    qyProvinciaDAT_AGG_REC: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrProvincia: TdmBrProvincia;

implementation

{$R *.dfm}

end.
