unit udmEdSubMandante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBAccess, Ora, DBClient, Provider, MemDS;

type
  TdmEdSubMandante = class(TdmEdit)
    qySubMandante: TOraQuery;
    poSubMandante: TDataSetProvider;
    cdsSubMandante: TClientDataSet;
    dsSubMandante: TDataSource;
    cdsSubMandanteID_SUBMANDANTE: TFloatField;
    cdsSubMandanteCOD_USR: TStringField;
    cdsSubMandanteDES_PDL: TStringField;
    cdsSubMandanteDAT_AGG_REC: TDateTimeField;
    cdsSubMandanteSUBMANDANTE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmEdSubMandante: TdmEdSubMandante;

implementation

{$R *.dfm}

end.
