unit U_Gerenciamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, Menus;

type
  TFrGerenciamento = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    DS_Grid: TDataSource;
    PopupMenu1: TPopupMenu;
    Apagar1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Apagar1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure   Operacoes(tipo: string);
  end;

var
  FrGerenciamento: TFrGerenciamento;

implementation

uses DataModule, U_Cadastro;

{$R *.dfm}


procedure TFrGerenciamento.FormCreate(Sender: TObject);
begin
  Operacoes('CON');
end;

procedure TFrGerenciamento.Button1Click(Sender: TObject);
begin
  var_inclusao  := 'S';
  var_cadastro  := 'N';

  Application.CreateForm(TFr_Cadastro,Fr_Cadastro);
  Fr_Cadastro.ShowModal;

  if var_cadastro <> 'S' then abort;

  Operacoes('CON');

end;

procedure TFrGerenciamento.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TFrGerenciamento.Operacoes(tipo: string);
var
id_livro  : string;
begin
    if(tipo = 'CON')then
    begin
      with DataModule1.CRUD_LIVROS_OPERACOES do
        begin
         close;
         Parameters.ParamByName('@INP_STATUS').value  :=  'CON';
         execproc; open; First;
      end;
  end;

    if(tipo = 'EXC')then
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
  end;
end;



procedure TFrGerenciamento.DBGrid1DblClick(Sender: TObject);
begin
  var_inclusao  := 'S';
  var_cadastro  := 'N';

  var_cod       :=    DataModule1.CRUD_LIVROS_OPERACOES.FieldByName('ID_LIVRO'      ).Value;
  var_titulo    :=    DataModule1.CRUD_LIVROS_OPERACOES.FieldByName('NOME_LIVRO'    ).Value;
  var_autor     :=    DataModule1.CRUD_LIVROS_OPERACOES.FieldByName('AUTOR'         ).Value;
  var_preco     :=    DataModule1.CRUD_LIVROS_OPERACOES.FieldByName('PRECO_LIVRO'   ).Value;
  var_data      :=    DataModule1.CRUD_LIVROS_OPERACOES.FieldByName('DATA_CADASTRO' ).Value;

  Application.CreateForm(TFr_Cadastro,Fr_Cadastro);
  Fr_Cadastro.ShowModal;

  if var_cadastro <> 'S' then abort;

  Operacoes('CON');
end;

procedure TFrGerenciamento.Apagar1Click(Sender: TObject);
begin
     Operacoes('EXC');
     Operacoes('CON');
end;

procedure TFrGerenciamento.Button2Click(Sender: TObject);
begin
  var_inclusao  := 'S';
  var_cadastro  := 'N';

  var_cod       :=    DataModule1.CRUD_LIVROS_OPERACOES.FieldByName('ID_LIVRO'      ).Value;
  var_titulo    :=    DataModule1.CRUD_LIVROS_OPERACOES.FieldByName('NOME_LIVRO'    ).Value;
  var_autor     :=    DataModule1.CRUD_LIVROS_OPERACOES.FieldByName('AUTOR'         ).Value;
  var_preco     :=    DataModule1.CRUD_LIVROS_OPERACOES.FieldByName('PRECO_LIVRO'   ).Value;
  var_data      :=    DataModule1.CRUD_LIVROS_OPERACOES.FieldByName('DATA_CADASTRO' ).Value;

  Application.CreateForm(TFr_Cadastro,Fr_Cadastro);
  Fr_Cadastro.ShowModal;

  if var_cadastro <> 'S' then abort;

  Operacoes('CON');
end;

end.
