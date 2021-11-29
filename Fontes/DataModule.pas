unit DataModule;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    DataBase_Connection: TADOConnection;
    CRUD_LIVROS_OPERACOES: TADOStoredProc;
    CRUD_LIVROS_OPERACOES_PEDIDOS: TADOStoredProc;
    CONSULTA_ITENS_PEDIDO: TADOStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
