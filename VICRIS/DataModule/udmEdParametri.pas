(*
  Il datamodule è impostato come Read ma discende dalla classe Edit perché è
  un edit a tutti gli effetti ma non deve preoccuparsi del commit e dell'edit
*)

unit udmEdParametri;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBAccess, Ora, MemDS;

type
  TdmEdParametri = class(TdmEdit)
    qyParametri: TOraQuery;
    qyParametriNPA_PAR: TFloatField;
    qyParametriCOD_PAR: TStringField;
    qyParametriDES_PAR: TStringField;
    qyParametriDES_CAT_PAR: TStringField;
    qyParametriCOD_USR: TStringField;
    qyParametriDES_PDL: TStringField;
    qyParametriDAT_AGG_REC: TDateTimeField;
    qyParametriVAL_PAR: TStringField;
    qyParametriNUM_ORD: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmEdParametri: TdmEdParametri;

implementation

{$R *.dfm}

end.
