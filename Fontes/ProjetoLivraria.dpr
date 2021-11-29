program ProjetoLivraria;

uses
  Forms,
  U_Menu in 'U_Menu.pas' {FrMenu},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule},
  U_Gerenciamento in 'U_Gerenciamento.pas' {FrGerenciamento},
  U_Cadastro in 'U_Cadastro.pas' {Fr_Cadastro},
  U_Vendas in 'U_Vendas.pas' {Fr_Vendas},
  u_Vendas_Cadastro in 'u_Vendas_Cadastro.pas' {Fr_Vendas_Cadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFrMenu, FrMenu);
  Application.Run;
end.
