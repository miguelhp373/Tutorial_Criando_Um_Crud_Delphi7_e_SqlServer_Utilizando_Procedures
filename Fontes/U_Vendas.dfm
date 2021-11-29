object Fr_Vendas: TFr_Vendas
  Left = 291
  Top = 117
  Width = 691
  Height = 480
  Caption = 'Vendas'
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
    Width = 675
    Height = 41
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 0
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Novo Pedido'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 600
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 675
    Height = 282
    Align = alTop
    DataSource = DS_GRID_TOP
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'COD'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Title.Caption = 'Cliente'
        Width = 262
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Title.Caption = 'Data'
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_PEDIDO'
        Title.Caption = 'Total'
        Width = 112
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 434
    Width = 675
    Height = 7
    Align = alTop
    TabOrder = 2
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 323
    Width = 675
    Height = 111
    Align = alTop
    DataSource = DS_GRID_BOTTOM
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SEQ'
        Title.Caption = 'Item'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 219
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Title.Caption = 'Preco Unit'#225'rio'
        Width = 113
        Visible = True
      end>
  end
  object DS_GRID_TOP: TDataSource
    DataSet = DataModule1.CRUD_LIVROS_OPERACOES_PEDIDOS
    Left = 640
    Top = 40
  end
  object DS_GRID_BOTTOM: TDataSource
    DataSet = DataModule1.CONSULTA_ITENS_PEDIDO
    Left = 640
    Top = 328
  end
end
