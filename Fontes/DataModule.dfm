object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 360
  Top = 200
  Height = 351
  Width = 373
  object DataBase_Connection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=CRUD_DATABASE;Data Source=MIGUELHENRIQU' +
      'E\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 24
  end
  object CRUD_LIVROS_OPERACOES: TADOStoredProc
    Connection = DataBase_Connection
    ProcedureName = 'dbo.CRUD_LIVROS_OPERACOES'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@INP_STATUS'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
      end
      item
        Name = '@INP_ID_LIVRO'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@INP_NOME_LIVRO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
      end
      item
        Name = '@INP_PRECO_LIVRO'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@INP_DATA_CADASTRO'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@INP_AUTOR'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
      end>
    Left = 160
    Top = 56
  end
  object CRUD_LIVROS_OPERACOES_PEDIDOS: TADOStoredProc
    Connection = DataBase_Connection
    ProcedureName = 'dbo.CRUD_LIVROS_OPERACOES_PEDIDOS'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@INP_STATUS'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
      end
      item
        Name = '@INP_COD'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@INP_CLIENTE'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
      end
      item
        Name = '@INP_TOTAL'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@INP_DATA_PEDIDO'
        Attributes = [paNullable]
        DataType = ftDateTime
      end>
    Left = 128
    Top = 128
  end
  object CONSULTA_ITENS_PEDIDO: TADOStoredProc
    Connection = DataBase_Connection
    ProcedureName = 'DBO.CONSULTA_ITENS_PEDIDO'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@INP_COD'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end>
    Left = 264
    Top = 136
  end
end
