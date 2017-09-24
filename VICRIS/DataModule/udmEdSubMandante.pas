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
    cdsSubMandanteFLAG_ACTIVE: TStringField;
  protected
    procedure dmAfterInsert(DataSet: TDataSet); override;
  end;

var
  dmEdSubMandante: TdmEdSubMandante;

implementation

{$R *.dfm}

{ TdmEdSubMandante }

procedure TdmEdSubMandante.dmAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if DataSet = cdsSubmandante then
    cdsSubmandanteFLAG_ACTIVE.AsString := '1';
end;

end.
