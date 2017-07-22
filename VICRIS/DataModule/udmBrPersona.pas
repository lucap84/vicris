unit udmBrPersona;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, MemDS, DBAccess, Ora;

type
  TdmBrPersona = class(TdmBrowse)
    qyPersona: TOraQuery;
    dsPersona: TDataSource;
    qyPersonaDES_NOM: TStringField;
    qyPersonaDES_COG: TStringField;
    qyPersonaDES_IND: TStringField;
    qyPersonaNUM_TEL_1: TStringField;
    qyPersonaNUM_TEL_2: TStringField;
    qyPersonaNUM_CEL: TStringField;
    qyPersonaNUM_FAX: TStringField;
    qyPersonaFLG_TIT: TStringField;
    qyPersonaCOD_NAZ: TStringField;
    qyPersonaCOD_CTA: TStringField;
    qyPersonaCOD_USR: TStringField;
    qyPersonaDES_PDL: TStringField;
    qyPersonaDAT_AGG_REC: TDateTimeField;
    qyPersonaDES_NAZ: TStringField;
    qyPersonaDES_CTA: TStringField;
    qyPersonaDES_TIT: TStringField;
    qyPersonaCOD_AUT: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrPersona: TdmBrPersona;

implementation

{$R *.dfm}

end.
