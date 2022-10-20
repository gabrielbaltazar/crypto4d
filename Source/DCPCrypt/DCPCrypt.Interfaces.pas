unit DCPCrypt.Interfaces;

interface

type
  IGBDCPCrypt = interface
    ['{4488CFD1-1210-4D8E-8128-EADCB7500AE4}']
    function Key(AValue: string): IGBDCPCrypt;
    function Crypto(AValue: string): string;
    function DeCrypto(AValue: string): string;
  end;

  IGBDCPCryptFactory = interface
    ['{5C8C5A73-09ED-4013-844B-AB89F17A961E}']
    function createCryptDefault: IGBDCPCrypt;
    function createCryptRC4: IGBDCPCrypt;
  end;

function FactoryCrypto: IGBDCPCryptFactory;
function Crypt: IGBDCPCrypt;

implementation

uses
  GBDCPCrypt.Factory;

function FactoryCrypto: IGBDCPCryptFactory;
begin
  Result := TGBDCPCryptFactory.New;
end;

function Crypt: IGBDCPCrypt;
begin
  result := FactoryCrypto.createCryptDefault;
end;

end.
