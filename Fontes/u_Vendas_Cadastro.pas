unit u_Vendas_Cadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, ExtCtrls;

type
  TFr_Vendas_Cadastro = class(TForm)
    cod: TEdit;
    cliente: TEdit;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    datalancamento: TMaskEdit;
    TOTAL: TEdit;
    Label3: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OperacoesVendas(tipo:string);
  end;

var
  Fr_Vendas_Cadastro: TFr_Vendas_Cadastro;

implementation

uses DataModule;

{$R *.dfm}

procedure TFr_Vendas_Cadastro.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TFr_Vendas_Cadastro.OperacoesVendas(tipo: string);
begin
 if(tipo = 'MAN')then
    begin
      with DataModule1.CRUD_LIVROS_OPERACOES_PEDIDOS do
        begin
         close;
         Parameters.ParamByName('@INP_STATUS'      ).value  :=  'MAN';
         Parameters.ParamByName('@INP_COD'         ).value  :=  cod.Text;
         Parameters.ParamByName('@INP_CLIENTE'     ).value  :=  cliente.Text;
         Parameters.ParamByName('@INP_TOTAL'       ).value  :=  StrToFloat(TOTAL.Text);
         Parameters.ParamByName('@INP_DATA_PEDIDO' ).value  :=  StrToDatetime(datalancamento.Text + '00:00:00.000');
         execproc;


      end;
  end;

   {if(tipo = 'EXC')then
    begin
      with DataModule1.CRUD_LIVROS_OPERACOES_PEDIDOS do
        begin
         close;
         Parameters.ParamByName('@INP_STATUS'         ).value  :=  tipo;
         Parameters.ParamByName('@INP_ID_LIVRO'       ).value  :=  cod.Text;
         execproc;

         var_cadastro := 'S';
         close;

      end;
  end;}
end;

procedure TFr_Vendas_Cadastro.Button1Click(Sender: TObject);
begin
  OperacoesVendas('MAN');
  close;
end;

end.
