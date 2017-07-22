unit udmBrIncarico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, MemDS, DBAccess, Ora;

type
  TdmBrIncarico = class(TdmBrowse)
    qyIncarico: TOraQuery;
    dsIncarico: TDataSource;
    qyIncaricoCOD_INC: TStringField;
    qyIncaricoDES_INC: TStringField;
    qyIncaricoCOD_USR: TStringField;
    qyIncaricoDES_PDL: TStringField;
    qyIncaricoDAT_AGG_REC: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrIncarico: TdmBrIncarico;

implementation

{$R *.dfm}

end.
