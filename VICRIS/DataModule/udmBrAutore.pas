unit udmBrAutore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, DBAccess, Ora, MemDS;

type
  TdmBrAutore = class(TdmBrowse)
    qyAutore: TOraQuery;
    dsAutore: TDataSource;
    qyAutoreCOD_AUT: TStringField;
    qyAutoreDES_NOM: TStringField;
    qyAutoreDES_COG: TStringField;
    qyAutoreDES_NTE: TStringField;
    qyAutoreDES_PDL: TStringField;
    qyAutoreDAT_AGG_REC: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrAutore: TdmBrAutore;

implementation

{$R *.dfm}

{ TdmBrAutore }

end.
