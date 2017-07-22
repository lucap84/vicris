unit udmBrProtocollo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, MemDS, DBAccess, Ora;

type
  TdmBrProtocollo = class(TdmBrowse)
    qyProtocollo: TOraQuery;
    dsProtocollo: TDataSource;
    qyProtocolloAAA_PTC: TFloatField;
    qyProtocolloFLG_TIP_PTC: TStringField;
    qyProtocolloCOD_PTC: TStringField;
    qyProtocolloDAT_DOC: TDateTimeField;
    qyProtocolloDAT_PTC: TDateTimeField;
    qyProtocolloDAT_FIN: TDateTimeField;
    qyProtocolloDES_OGG: TStringField;
    qyProtocolloDES_PMR: TStringField;
    qyProtocolloDES_INC: TStringField;
    qyProtocolloCOD: TStringField;
    qyProtocolloDES_AUT: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrProtocollo: TdmBrProtocollo;

implementation

{$R *.dfm}

end.
