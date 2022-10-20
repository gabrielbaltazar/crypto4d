program Project1;

uses
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {Form2},
  DCPbase64 in '..\..\Source\DCPbase64.pas',
  DCPblockciphers in '..\..\Source\DCPblockciphers.pas',
  DCPconst in '..\..\Source\DCPconst.pas',
  DCPcrypt2 in '..\..\Source\DCPcrypt2.pas',
  DCPreg in '..\..\Source\DCPreg.pas',
  DCPtypes in '..\..\Source\DCPtypes.pas',
  DCPblowfish in '..\..\Source\Ciphers\DCPblowfish.pas',
  DCPcast128 in '..\..\Source\Ciphers\DCPcast128.pas',
  DCPcast256 in '..\..\Source\Ciphers\DCPcast256.pas',
  DCPdes in '..\..\Source\Ciphers\DCPdes.pas',
  DCPgost in '..\..\Source\Ciphers\DCPgost.pas',
  DCPice in '..\..\Source\Ciphers\DCPice.pas',
  DCPidea in '..\..\Source\Ciphers\DCPidea.pas',
  DCPmars in '..\..\Source\Ciphers\DCPmars.pas',
  DCPmisty1 in '..\..\Source\Ciphers\DCPmisty1.pas',
  DCPrc2 in '..\..\Source\Ciphers\DCPrc2.pas',
  DCPrc4 in '..\..\Source\Ciphers\DCPrc4.pas',
  DCPrc5 in '..\..\Source\Ciphers\DCPrc5.pas',
  DCPrc6 in '..\..\Source\Ciphers\DCPrc6.pas',
  DCPrijndael in '..\..\Source\Ciphers\DCPrijndael.pas',
  DCPserpent in '..\..\Source\Ciphers\DCPserpent.pas',
  DCPtea in '..\..\Source\Ciphers\DCPtea.pas',
  DCPtwofish in '..\..\Source\Ciphers\DCPtwofish.pas',
  DCPhaval in '..\..\Source\Hashes\DCPhaval.pas',
  DCPmd4 in '..\..\Source\Hashes\DCPmd4.pas',
  DCPmd5 in '..\..\Source\Hashes\DCPmd5.pas',
  DCPripemd128 in '..\..\Source\Hashes\DCPripemd128.pas',
  DCPripemd160 in '..\..\Source\Hashes\DCPripemd160.pas',
  DCPsha1 in '..\..\Source\Hashes\DCPsha1.pas',
  DCPsha256 in '..\..\Source\Hashes\DCPsha256.pas',
  DCPsha512 in '..\..\Source\Hashes\DCPsha512.pas',
  DCPtiger in '..\..\Source\Hashes\DCPtiger.pas',
  GBDCPCrypt.Interfaces in '..\..\Source\GBDCPCrypt.Interfaces.pas',
  GBDCPCrypt.Base in '..\..\Source\GBDCPCrypt.Base.pas',
  GBDCPCrypt.RC4 in '..\..\Source\GBDCPCrypt.RC4.pas',
  GBDCPCryptFactory in '..\..\Source\GBDCPCryptFactory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
