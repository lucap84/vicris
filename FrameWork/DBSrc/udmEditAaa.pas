unit udmEditAaa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBAccess, Ora, udmGlobal;

type
  TdmEditAaa = class(TdmEdit)
  private
    { Private declarations }
  protected
    function  dmDimNumPrgCustom: boolean; override;
  public
    { Public declarations }
  end;

var
  dmEditAaa: TdmEditAaa;

implementation

{$R *.dfm}

{ TdmEditAaa }

{ TdmEditAaa }

function TdmEditAaa.dmDimNumPrgCustom: boolean;
begin
  Result := dmGlobal.DimNumPrgAaa(StrToInt(hKeyValues[0]), hKeyValues[1], hKeyFields[2], hKeyValues[2]);
end;

end.
