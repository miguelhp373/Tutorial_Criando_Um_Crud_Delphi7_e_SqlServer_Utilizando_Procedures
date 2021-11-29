object Fr_Vendas_Cadastro: TFr_Vendas_Cadastro
  Left = 252
  Top = 117
  Width = 402
  Height = 307
  Caption = 'Novo Pedido'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 61
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 32
    Top = 109
    Width = 32
    Height = 13
    Caption = 'Cliente'
  end
  object Label4: TLabel
    Left = 32
    Top = 154
    Width = 100
    Height = 13
    Caption = 'Data de Lan'#231'amento'
  end
  object Label3: TLabel
    Left = 32
    Top = 206
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object cod: TEdit
    Left = 32
    Top = 77
    Width = 72
    Height = 21
    TabOrder = 0
  end
  object cliente: TEdit
    Left = 32
    Top = 125
    Width = 216
    Height = 21
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 386
    Height = 41
    Align = alTop
    TabOrder = 2
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
    end
  end
  object datalancamento: TMaskEdit
    Left = 32
    Top = 172
    Width = 97
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
  end
  object TOTAL: TEdit
    Left = 32
    Top = 222
    Width = 120
    Height = 21
    TabOrder = 4
  end
end
