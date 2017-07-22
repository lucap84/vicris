unit udmBrUbi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, MemDS, DBAccess, Ora;

type
  TdmBrUbi = class(TdmBrowse)
    qyUbi: TOraQuery;
    dsUbi: TDataSource;
    qyUbiCOD_UBI: TStringField;
    qyUbiDES_UBI: TStringField;
    qyUbiCOD_USR: TStringField;
    qyUbiDES_PDL: TStringField;
    qyUbiDAT_AGG_REC: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrUbi: TdmBrUbi;

implementation

{$R *.dfm}

end.
