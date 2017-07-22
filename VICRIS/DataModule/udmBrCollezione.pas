unit udmBrCollezione;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, MemDS, DBAccess, Ora;

type
  TdmBrCollezione = class(TdmBrowse)
    qyCollezione: TOraQuery;
    dsCollezione: TDataSource;
    qyCollezioneCOD_CLZ: TStringField;
    qyCollezioneDES_CLZ: TStringField;
    qyCollezioneDES_PDL: TStringField;
    qyCollezioneDAT_AGG_REC: TDateTimeField;
    qyCollezioneCOD_USR: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrCollezione: TdmBrCollezione;

implementation

{$R *.dfm}

end.
