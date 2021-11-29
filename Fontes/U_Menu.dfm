object FrMenu: TFrMenu
  Left = 255
  Top = 123
  Width = 928
  Height = 480
  Caption = 'FrMenu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 421
    Align = alClient
    Caption = 'Livraria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 64
    Top = 120
    object livros1: TMenuItem
      Caption = 'Livros'
      object Gerenciamento1: TMenuItem
        Caption = 'Gerenciamento'
        OnClick = Gerenciamento1Click
      end
      object Vendas1: TMenuItem
        Caption = 'Vendas'
        OnClick = Vendas1Click
      end
    end
  end
end
