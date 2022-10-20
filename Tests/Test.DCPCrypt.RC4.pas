unit Test.DCPCrypt.RC4;

interface

uses
  DUnitX.TestFramework,
  Crypto4D.Interfaces;

type
  [TestFixture]
  TTestDCPCryptRC4 = class
  private
    FCrypto: ICrypto4D;
    FCriptografado: string;
    FDeCriptografado: string;
  public
    [Setup]
    procedure Setup;

    [Test]
    procedure CryptoStringVazia;

    [Test]
    procedure DeCryptoStringVazia;

    [Test]
    procedure Crypto;

    [Test]
    procedure DeCrypto;

    [Test]
    procedure CryptoCaracteresEspeciais;
  end;

implementation

{ TTestDCPCryptRC4 }

procedure TTestDCPCryptRC4.Crypto;
var
  LChave: string;
begin
  LChave := FCrypto.Crypto(FDeCriptografado);
  Assert.AreEqual(LChave, FCriptografado);
end;

procedure TTestDCPCryptRC4.CryptoCaracteresEspeciais;
var
  LChave: string;
  LResultado: string;
begin
  LChave := 'É coisa do vovô e da vovó.';
  LResultado := FCrypto.Crypto(LChave);
  LResultado := FCrypto.DeCrypto(LResultado);
  Assert.AreEqual(LChave, LResultado);
end;

procedure TTestDCPCryptRC4.CryptoStringVazia;
var
  LResultado: string;
begin
  LResultado := FCrypto.Crypto('');
  Assert.IsEmpty(LResultado);
end;

procedure TTestDCPCryptRC4.DeCrypto;
var
  LChave: string;
begin
  LChave := FCrypto.DeCrypto(FCriptografado);
  Assert.AreEqual(LChave, FDeCriptografado);
end;

procedure TTestDCPCryptRC4.DeCryptoStringVazia;
var
  LResultado: string;
begin
  LResultado := FCrypto.DeCrypto(' ');
  Assert.AreEqual(' ', LResultado);
end;

procedure TTestDCPCryptRC4.Setup;
begin
  FCrypto := GetCrypto;
  FCrypto.Key('TESTE');
  FDeCriptografado := 'gabrielbaltazar';
  FCriptografado := FCrypto.Crypto(FDeCriptografado);
end;

end.
