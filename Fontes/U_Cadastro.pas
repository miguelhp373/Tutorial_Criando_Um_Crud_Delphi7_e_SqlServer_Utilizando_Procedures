unit U_Cadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask;

type
  TFr_Cadastro = class(TForm)
    cod: TEdit;
    titulo: TEdit;
    autor: TEdit;
    preco: TEdit;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    datalancamento: TMaskEdit;
    Label5: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CRUD_OPERACOES(tipo:string);
  end;

var
  Fr_Cadastro: TFr_Cadastro;
  var_inclusao  : string;
  var_cadastro  : string;
  var_cod       : string;
  var_titulo    : string;
  var_autor     : string;
  var_preco     : string;
  var_data      : string;

implementation



{$R *.dfm}

uses DataModule, ADODB;

procedure TFr_Cadastro.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TFr_Cadastro.CRUD_OPERACOES(tipo:string);
begin
  if(tipo = 'MAN')then
    begin
      with DataModule1.CRUD_LIVROS_OPERACOES do
        begin
         close;
         Parameters.ParamByName('@INP_STATUS'         ).value  :=  'MAN';
         Parameters.ParamByName('@INP_ID_LIVRO'       ).value  :=  cod.Text;
         Parameters.ParamByName('@INP_NOME_LIVRO'     ).value  :=  titulo.Text;
         Parameters.ParamByName('@INP_PRECO_LIVRO'    ).value  :=  StrToFloat(preco.Text);
         Parameters.ParamByName('@INP_DATA_CADASTRO'  ).value  :=  StrToDatetime(datalancamento.Text + '00:00:00.000');
         Parameters.ParamByName('@INP_AUTOR'          ).value  :=  autor.Text;
         execproc;


      end;
  end;

    if(tipo = 'EXC')then
    begin
      with DataModule1.CRUD_LIVROS_OPERACOES do
        begin
         close;
         Parameters.ParamByName('@INP_STATUS'         ).value  :=  tipo;
         Parameters.ParamByName('@INP_ID_LIVRO'       ).value  :=  cod.Text;
         execproc;

         var_cadastro := 'S';
         close;

      end;
  end;

end;

procedure TFr_Cadastro.Button1Click(Sender: TObject);
begin
   CRUD_OPERACOES('MAN');
   var_cadastro := 'S';
   close;
         

end;

procedure TFr_Cadastro.Button3Click(Sender: TObject);
begin
   if ((cod.Text <> '0') or (cod.Text <> ''))then CRUD_OPERACOES('EXC');

   var_cadastro := 'S';
   close;
   
end;

procedure TFr_Cadastro.FormCreate(Sender: TObject);
begin


    if var_cod = '' then cod.Text := '0';

    if var_cod      <> '' then    cod.Text             :=  var_cod;
    if var_titulo   <> '' then    titulo.Text          :=  var_titulo;
    if var_preco    <> '' then    preco.Text           :=  var_preco;
    if var_data     <> '' then    datalancamento.Text  :=  var_data;
    if var_autor    <> '' then    autor.Text           :=  var_autor;

end;

end.
