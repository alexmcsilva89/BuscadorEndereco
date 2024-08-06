program BuscadorEndereco;

uses
  Vcl.Forms,
  BuscadorEndereco.Model.Conexao.Enum.Driver in 'Model\BuscadorEndereco.Model.Conexao.Enum.Driver.pas',
  BuscadorEndereco.Model.Conexao.Factory in 'Model\BuscadorEndereco.Model.Conexao.Factory.pas',
  BuscadorEndereco.Model.Conexao.SQLite in 'Model\BuscadorEndereco.Model.Conexao.SQLite.pas',
  BuscadorEndereco.Model.Interfaces in 'Model\BuscadorEndereco.Model.Interfaces.pas',
  BuscadorEndereco.Controller.Conexao in 'Controller\BuscadorEndereco.Controller.Conexao.pas',
  BuscadorEndereco.View.Principal in 'View\BuscadorEndereco.View.Principal.pas' {ViewPrincipal},
  BuscadorEndereco.Controller.Interfaces in 'Controller\BuscadorEndereco.Controller.Interfaces.pas',
  BuscadorEndereco.Model.Endereco in 'Model\BuscadorEndereco.Model.Endereco.pas',
  BuscadorEndereco.Controller.Endereco in 'Controller\BuscadorEndereco.Controller.Endereco.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.Run;
end.
