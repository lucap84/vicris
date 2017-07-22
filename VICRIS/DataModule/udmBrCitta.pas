unit udmBrCitta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, MemDS, DBAccess, Ora;

type
  TdmBrCitta = class(TdmBrowse)
    qyCitta: TOraQuery;
    dsCitta: TDataSource;
    qyCittaDES_NAZ: TStringField;
    qyCittaCOD_CTA: TStringField;
    qyCittaDES_CTA: TStringField;
    qyCittaCOD_NAZ: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrCitta: TdmBrCitta;

implementation

{$R *.dfm}

end.
