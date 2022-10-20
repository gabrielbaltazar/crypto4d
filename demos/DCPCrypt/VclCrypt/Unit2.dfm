object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 299
  ClientWidth = 907
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 16
    Top = 104
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label3: TLabel
    Left = 16
    Top = 200
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object edtSenha: TEdit
    Left = 16
    Top = 35
    Width = 433
    Height = 21
    TabOrder = 0
    Text = 'Gbaltazar2009@#'#195#227#233#244';!$$'
  end
  object edtSenhaCrypt: TEdit
    Left = 16
    Top = 123
    Width = 433
    Height = 21
    TabOrder = 1
  end
  object edtSenhaDeCrypt: TEdit
    Left = 16
    Top = 219
    Width = 433
    Height = 21
    TabOrder = 2
  end
  object btnCrypt: TButton
    Left = 16
    Top = 62
    Width = 75
    Height = 25
    Caption = 'Crypt'
    TabOrder = 3
    OnClick = btnCryptClick
  end
  object btnDecrypt: TButton
    Left = 16
    Top = 150
    Width = 75
    Height = 25
    Caption = 'Decrypt'
    TabOrder = 4
    OnClick = btnDecryptClick
  end
end
