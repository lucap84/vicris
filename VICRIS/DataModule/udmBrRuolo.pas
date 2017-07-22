unit udmBrRuolo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, DBAccess, Ora, MemDS;

type
  TdmBrRuolo = class(TdmBrowse)
    qyRuolo: TOraQuery;
    dsRuolo: TDataSource;
    qyRuoloNPA_ROL: TFloatField;
    qyRuoloCOD_INC: TStringField;
    qyRuoloDES_INC: TStringField;
    qyRuoloCOD_PMR: TStringField;
    qyRuoloDES_PMR: TStringField;
    qyRuoloDAT_INI: TDateTimeField;
    qyRuoloDAT_FIN: TDateTimeField;
    qyRuoloCOD_AUT: TStringField;
    qyRuoloDES_AUT: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrRuolo: TdmBrRuolo;

implementation

{$R *.dfm}

end.
