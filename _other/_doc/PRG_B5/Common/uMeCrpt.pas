unit uMeCrpt;

interface
uses
  Windows, Messages, SysUtils, Classes, StdCtrls;

function StreamToStr(AStream : TStream) : String;
function StrToStream(AString : String) : TMemoryStream;
function FileToStr(AFileName : String) : String;


implementation

procedure EnCrypt(SrcStream, DestStream : TStream; ADigit : byte = 13);
var BT : byte;
begin
  with SrcStream do
  begin
//    DestStream.Position := 0;
    DestStream.Size := 0;
    Position := 0;
    while SrcStream.Position < SrcStream.Size do
    begin
      Read(BT, 1);
      BT := BT xor ADigit;
      DestStream.Write(BT, 1);
    end;
  end;
end;

function StrToStream(AString : String) : TMemoryStream;
var FS, FS2 : TMemoryStream;
begin
  AString := trim(AString);
  Result := nil;
  FS := TMemoryStream.Create;
  FS2 := TMemoryStream.Create;
  try
    FS.Write(PChar(AString)^, Length(AString));
    EnCrypt(FS, FS2);
    Result := FS2;
  finally
    FS.Free;
  end;
end;

function StreamToStr(AStream : TStream) : String;
var FS : TStream;
    P : PChar;//Pointer;
begin
  Result := '';
  FS := TMemoryStream.Create;
  try
    EnCrypt(AStream, FS);
    FS.Position := 0;
    GetMem(P, FS.Size + 1);
    FillChar(P^, FS.Size + 1, 0);

    FS.Read(P^, FS.Size);
  //  SetString(Result, PChar(P), FS.Size);
    Result := trim(String(P));
  finally
    FS.Free;
  end;
end;

function FileToStr(AFileName : String) : String;
var FS : TMemoryStream;
begin
  try
    FS := TMemoryStream.Create;
    FS.LoadFromFile(AFileName);

    Result := StreamToStr(FS);
  finally
    FS.Free;
  end;
end;


end.
