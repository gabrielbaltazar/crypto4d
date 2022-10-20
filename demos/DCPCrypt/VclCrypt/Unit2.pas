unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  DCPrc4, DCPsha1;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    edtSenha: TEdit;
    edtSenhaCrypt: TEdit;
    Label2: TLabel;
    edtSenhaDeCrypt: TEdit;
    Label3: TLabel;
    btnCrypt: TButton;
    btnDecrypt: TButton;
    procedure btnCryptClick(Sender: TObject);
    procedure btnDecryptClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnCryptClick(Sender: TObject);
var
    i: integer;
    Cipher: TDCP_rc4;
    KeyStr: string;
begin
   KeyStr:= edtSenha.Text;
   Cipher:= TDCP_rc4.Create(Self);
   Cipher.InitStr('PW3Manager123', TDCP_sha1);

   edtSenhaCrypt.Text := Cipher.EncryptString(KeyStr);
   Cipher.Burn;
   Cipher.Free;
end;

procedure TForm2.btnDecryptClick(Sender: TObject);
var
    i: integer;
    Cipher: TDCP_rc4;
    KeyStr: string;
  begin
    KeyStr:= edtSenhaCrypt.Text;
      Cipher:= TDCP_rc4.Create(Self);
      Cipher.InitStr('PW3Manager123',TDCP_sha1);

        edtSenhaDeCrypt.Text :=  Cipher.DecryptString(KeyStr); // gabriel baltazar -1 release
        // F2
//      edtSenhaDeCrypt.Text := Cipher.DecryptString(KeyStr);
      Cipher.Burn;
      Cipher.Free;
  end;

end.
