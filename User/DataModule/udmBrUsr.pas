unit udmBrUsr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, DBAccess, Ora, MemDS, uGlobals;

type
  TdmBrUsr = class(TdmBrowse)
    qyUsr: TOraQuery;
    dsUsr: TDataSource;
    qyUsrDES_USR: TStringField;
    qyUsrDES_FIL_SHR: TStringField;
    qyUsrCOD_USR: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrUsr: TdmBrUsr;

implementation

{$R *.dfm}

{ TdmBrUsr }

end.
