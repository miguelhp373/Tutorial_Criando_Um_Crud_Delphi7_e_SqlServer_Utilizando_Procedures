object FrGerenciamento: TFrGerenciamento
  Left = 343
  Top = 142
  Width = 571
  Height = 480
  Caption = 'Gerenciamento'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 555
    Height = 41
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 0
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Novo'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 74
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Editar'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 480
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Fechar'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 555
    Height = 400
    Align = alClient
    DataSource = DS_Grid
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_LIVRO'
        Title.Caption = 'C'#243'digo'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_LIVRO'
        Title.Caption = 'Titulo'
        Width = 226
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_LIVRO'
        Title.Caption = 'Pre'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_CADASTRO'
        Title.Caption = 'Lan'#231'amento'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AUTOR'
        Title.Caption = 'Autor'
        Width = 82
        Visible = True
      end>
  end
  object DS_Grid: TDataSource
    DataSet = DataModule1.CRUD_LIVROS_OPERACOES
    Left = 512
    Top = 88
  end
  object PopupMenu1: TPopupMenu
    Left = 512
    Top = 120
    object Apagar1: TMenuItem
      Caption = 'Apagar'
      OnClick = Apagar1Click
    end
  end
end
