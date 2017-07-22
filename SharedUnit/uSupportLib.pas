unit uSupportLib;

interface

uses
  Windows, DBClient, Classes, DB, Provider, SysUtils;

const
  CrLf = #13#10;

function  AppendMsg(var AMsg: String; const AStr: String): boolean;
function  FillZeroesLeft(Str: string; Count: integer; Chr: Char) : string;
function  GetComponentFromName(AOwner: TComponent; AName: String): TComponent;
function  GetDataSetFromClientDataSet(ACds: TClientDataSet): TDataSet;
function  GetMachineName: string;
procedure Split(StrBuf,Delimiter: string; var MyStrList: TStringList);

implementation

function AppendMsg(var AMsg: String; const AStr: String): boolean;
begin
  if AMsg = '' then
    AMsg := AStr
  else
    AMsg := AMsg + CrLf + AStr;
  Result := True;
end;

function FillZeroesLeft(Str: string; Count: integer; Chr: Char) : string;
begin
  Result := StringOfChar(Chr, Count - Length(Str)) + Str;
end;

function GetComponentFromName(AOwner: TComponent; AName: String): TComponent;
var
  i : integer;
begin
  Result := nil;
  for i := 0 to AOwner.ComponentCount - 1 do
    if AnsiUpperCase(AOwner.Components[i].Name) = ANSIUpperCase(AName) then
    begin
      Result := AOwner.Components[i];
      Break;
    end;
end;

function GetDataSetFromClientDataSet(ACds: TClientDataSet): TDataSet;
var
  AuxProvider : TDataSetProvider;
begin
  Result := nil;

  if ACds.ProviderName <> '' then
  begin
    AuxProvider := TDataSetProvider(GetComponentFromName(ACds.Owner, ACds.ProviderName));
    if Assigned(AuxProvider) and
       Assigned(AuxProvider.DataSet) then
      Result := AuxProvider.DataSet;
  end;
end;

function GetMachineName: string;
var
  Buffer: array[0..255] of Char;
  Size: DWord;
begin
  Size := 256;
  if GetComputerName(Buffer, Size) then
    Result := Buffer
  else
    Result := '';
end;

procedure Split(StrBuf,Delimiter: string; var MyStrList: TStringList);
var
  TmpBuf: string;
  LoopCount: integer;
begin
  LoopCount := 0;
  repeat
    if StrBuf[LoopCount] = Delimiter then
    begin
      MyStrList.Add(TmpBuf);
      TmpBuf := '';
    end;
    TmpBuf := TmpBuf + StrBuf[LoopCount];
    inc(LoopCount);
  until LoopCount > Length(StrBuf);
  MyStrList.Add(TmpBuf);
end;

end.
