unit udmBrEditrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, MemDS, DBAccess, Ora;

type
  TdmBrEditrice = class(TdmBrowse)
    qyEditrice: TOraQuery;
    dsEditrice: TDataSource;
    qyEditriceCOD_CED: TStringField;
    qyEditriceDES_CED: TStringField;
    qyEditriceDES_NAZ: TStringField;
    qyEditriceDES_CTA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrEditrice: TdmBrEditrice;

implementation

{$R *.dfm}

end.
