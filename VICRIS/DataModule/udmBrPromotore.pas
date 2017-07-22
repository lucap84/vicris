unit udmBrPromotore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, MemDS, DBAccess, Ora;

type
  TdmBrPromotore = class(TdmBrowse)
    qyPromotore: TOraQuery;
    dsPromotore: TDataSource;
    qyPromotoreCOD_PMR: TStringField;
    qyPromotoreDES_PMR: TStringField;
    qyPromotoreDES_PDL: TStringField;
    qyPromotoreDAT_AGG_REC: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrPromotore: TdmBrPromotore;

implementation

{$R *.dfm}

end.
