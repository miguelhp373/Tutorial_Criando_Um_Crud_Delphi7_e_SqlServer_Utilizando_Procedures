unit U_Vendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DB;

type
  TFr_Vendas = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Button2: TButton;
    DS_GRID_TOP: TDataSource;
    DS_GRID_BOTTOM: TDataSource;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure VENDAS_OPERACOES(tipo:string);
  end;

var
  Fr_Vendas: TFr_Vendas;

implementation

uses u_Vendas_Cadastro, DataModule;

{$R *.dfm}

procedure TFr_Vendas.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TFr_Vendas.Button1Click(Sender: TObject);
begin
  Application.CreateForm(TFr_Vendas_Cadastro,Fr_Vendas_Cadastro);
  Fr_Vendas_Cadastro.ShowModal;

  VENDAS_OPERACOES('CO1');

end;

procedure TFr_Vendas.FormCreate(Sender: TObject);
begin
  VENDAS_OPERACOES('CO1');
end;

procedure TFr_Vendas.VENDAS_OPERACOES(tipo: string);
var
  COD_PEDIDO : string;
begin
    if(tipo = 'CO1')then
    begin
      with DataModule1.CRUD_LIVROS_OPERACOES_PEDIDOS do
        begin
         close;
         Parameters.ParamByName('@INP_STATUS').value  :=  tipo;
         execproc; open; First;
      end;
  end;


  if(tipo = 'CO2')then
    begin
          COD_PEDIDO  := DataModule1.CRUD_LIVROS_OPERACOES_PEDIDOS.FieldByName('COD').Value;

      with DataModule1.CONSULTA_ITENS_PEDIDO do
        begin
         close;
         Parameters.ParamByName('@INP_COD').value     := COD_PEDIDO ;
         execproc; open; First;
      end;
  end;

    {if(tipo = 'EXC')then
    begin
      id_livro  := DataModule1.CRUD_LIVROS_OPERACOES.FieldByName('ID_LIVRO').Value;

      if id_livro = '' then abort;

      with DataModule1.CRUD_LIVROS_OPERACOES do
        begin
         close;
         Parameters.ParamByName('@INP_STATUS'         ).value  :=  tipo;
         Parameters.ParamByName('@INP_ID_LIVRO'       ).value  :=  id_livro;
         execproc;
      end; 
  end;}
end;

procedure TFr_Vendas.DBGrid1CellClick(Column: TColumn);
begin
  VENDAS_OPERACOES('CO2');
end;

end.
