unit udmBrVendita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, MemDS, DBAccess, Ora;

type
  TdmBrVendita = class(TdmBrowse)
    qyVendita: TOraQuery;
    dsVendita: TDataSource;
    qyVenditaID_VENDITA: TFloatField;
    qyVenditaDATA_VENDITA: TDateTimeField;
    qyVenditaID_CLIENTE: TFloatField;
    qyVenditaDATA_FATTURA: TDateTimeField;
    qyVenditaNUMERO_FATTURA: TStringField;
    qyVenditaNOTE: TStringField;
    qyVenditaNOME: TStringField;
    qyVenditaTOT_VEN: TFloatField;
    qyVenditaFLAG_VICRIS: TStringField;
    qyVenditaDES_VICRIS: TStringField;
    qyVenditaIMPOSTA: TFloatField;
    qyVenditaTOTALE_IVATO: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrVendita: TdmBrVendita;

implementation

{$R *.dfm}

end.
