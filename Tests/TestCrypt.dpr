program TestCrypt;

{$IFNDEF TESTINSIGHT}
{$APPTYPE CONSOLE}
{$ENDIF}
{$STRONGLINKTYPES ON}
uses
  System.SysUtils,
  {$IFDEF TESTINSIGHT}
  TestInsight.DUnitX,
  {$ELSE}
  DUnitX.Loggers.Console,
  {$ENDIF }
  DUnitX.TestFramework,
  Test.DCPCrypt.RC4 in 'Test.DCPCrypt.RC4.pas',
  Crypto4D.Interfaces in '..\Source\Crypto4D.Interfaces.pas',
  Crypto4D.DCPCryptRC4 in '..\Source\Crypto4D.DCPCryptRC4.pas';

begin
  IsConsole := False;
  ReportMemoryLeaksOnShutdown := True;
  TestInsight.DUnitX.RunRegisteredTests;
end.
