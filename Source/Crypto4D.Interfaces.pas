unit Crypto4D.Interfaces;

interface

type
  ICrypto4D = interface
    ['{FD88841D-0E31-42E9-B84D-E38E9DD6B4E2}']
    function Key(AValue: string): ICrypto4D;
    function Crypto(AValue: string): string;
    function DeCrypto(AValue: string): string;
  end;

function GetCrypto: ICrypto4D;

implementation

uses
  Crypto4D.DCPCryptRC4;

function GetCrypto: ICrypto4D;
begin
  Result := TCrypto4DDCPCryptRC4.New;
end;

end.
