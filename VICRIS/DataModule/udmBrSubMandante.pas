unit udmBrSubMandante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, MemDS, DBAccess, Ora;

type
  TdmBrSubMandante = class(TdmBrowse)
    qySubMandante: TOraQuery;
    dsSubMandante: TDataSource;
    qySubMandanteID_SUBMANDANTE: TFloatField;
    qySubMandanteCOD_USR: TStringField;
    qySubMandanteDES_PDL: TStringField;
    qySubMandanteDAT_AGG_REC: TDateTimeField;
    qySubMandanteSUBMANDANTE: TStringField;
    qySubMandanteFLAG_ACTIVE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrSubMandante: TdmBrSubMandante;

implementation

{$R *.dfm}

end.
