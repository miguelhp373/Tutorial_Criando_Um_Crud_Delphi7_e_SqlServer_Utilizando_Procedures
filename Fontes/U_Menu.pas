unit U_Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls;

type
  TFrMenu = class(TForm)
    MainMenu1: TMainMenu;
    livros1: TMenuItem;
    Gerenciamento1: TMenuItem;
    Panel1: TPanel;
    Vendas1: TMenuItem;
    procedure Gerenciamento1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrMenu: TFrMenu;

implementation

uses  U_Gerenciamento,U_Vendas;

{$R *.dfm}


procedure TFrMenu.Gerenciamento1Click(Sender: TObject);
begin
  Application.CreateForm(TFrGerenciamento,FrGerenciamento);
  FrGerenciamento.ShowModal;
end;

procedure TFrMenu.Vendas1Click(Sender: TObject);
begin
  Application.CreateForm(TFr_Vendas,Fr_Vendas);
  Fr_Vendas.ShowModal;
end;

end.
