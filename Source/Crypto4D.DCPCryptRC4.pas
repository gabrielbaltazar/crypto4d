unit Crypto4D.DCPCryptRC4;

interface

uses
  Crypto4D.Interfaces,
  DCPrc4,
  DCPsha1,
  DCPsha256,
  DCPsha512,
  System.SysUtils;

type
  TCrypto4DDCPCryptRC4 = class(TInterfacedObject, ICrypto4D)
  private
    FKey: string;
    function CreateCipher: TDCP_rc4;
  protected
    function Key(AValue: string): ICrypto4D;
    function Crypto(AValue: string): string;
    function DeCrypto(AValue: string): string;
  public
    class function New: ICrypto4D;
  end;

implementation

{ TCrypto4DDCPCryptRC4 }

function TCrypto4DDCPCryptRC4.CreateCipher: TDCP_rc4;
begin
  if FKey.Trim.IsEmpty then
    raise Exception.Create('Please set the Key.');
  Result := TDCP_rc4.Create(nil);
  try
    Result.InitStr(RawByteString(FKey), TDCP_sha512);
  except
    Result.Free;
    raise;
  end;
end;

function TCrypto4DDCPCryptRC4.Crypto(AValue: string): string;
var
  LCipher: TDCP_rc4;
begin
  if AValue.Trim.IsEmpty then
    Exit(AValue);

  LCipher := createCipher;
  try
    Result := LCipher.EncryptString(AValue);
  finally
    LCipher.Burn;
    LCipher.Free;
  end;
end;

function TCrypto4DDCPCryptRC4.DeCrypto(AValue: string): string;
var
  LCipher: TDCP_rc4;
begin
  if AValue.Trim.IsEmpty then
    Exit(AValue);

  LCipher := CreateCipher;
  try
    Result := LCipher.DecryptString(AValue);
  finally
    LCipher.Burn;
    LCipher.Free;
  end;
end;

function TCrypto4DDCPCryptRC4.Key(AValue: string): ICrypto4D;
begin
  Result := Self;
  FKey := AValue;
end;

class function TCrypto4DDCPCryptRC4.New: ICrypto4D;
begin
  Result := Self.Create;
end;

end.
