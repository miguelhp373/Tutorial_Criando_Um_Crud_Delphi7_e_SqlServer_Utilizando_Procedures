object Fr_Cadastro: TFr_Cadastro
  Left = 307
  Top = 146
  Width = 401
  Height = 367
  Caption = 'Cadastro de Livros'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 72
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 32
    Top = 120
    Width = 26
    Height = 13
    Caption = 'Titulo'
  end
  object Label3: TLabel
    Left = 32
    Top = 168
    Width = 25
    Height = 13
    Caption = 'Autor'
  end
  object Label4: TLabel
    Left = 32
    Top = 262
    Width = 100
    Height = 13
    Caption = 'Data de Lan'#231'amento'
  end
  object Label5: TLabel
    Left = 32
    Top = 216
    Width = 28
    Height = 13
    Caption = 'Pre'#231'o'
  end
  object cod: TEdit
    Left = 32
    Top = 88
    Width = 73
    Height = 21
    TabOrder = 0
  end
  object titulo: TEdit
    Left = 32
    Top = 136
    Width = 217
    Height = 21
    TabOrder = 1
  end
  object autor: TEdit
    Left = 32
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object preco: TEdit
    Left = 32
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 385
    Height = 41
    Align = alTop
    TabOrder = 4
    object Button1: TButton
      Left = 0
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 310
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 74
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Apagar'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object datalancamento: TMaskEdit
    Left = 32
    Top = 280
    Width = 97
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 5
    Text = '  /  /    '
  end
end
