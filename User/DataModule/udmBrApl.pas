unit udmBrApl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, DBAccess, Ora, MemDS;

type
  TdmBrApl = class(TdmBrowse)
    qyApl: TOraQuery;
    dsApl: TDataSource;
    qyAplCOD_APL: TStringField;
    qyAplDES_APL: TStringField;
    qyAplDBS_NOM: TStringField;
    qyAplDBS_USR: TStringField;
    qyAplDBS_PWD: TStringField;
    qyAplDES_PDL: TStringField;
    qyAplDAT_AGG_REC: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrApl: TdmBrApl;

implementation

{$R *.dfm}

end.
