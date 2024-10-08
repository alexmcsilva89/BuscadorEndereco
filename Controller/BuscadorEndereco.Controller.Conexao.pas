unit BuscadorEndereco.Controller.Conexao;

interface

uses
  BuscadorEndereco.Controller.Interfaces, BuscadorEndereco.Model.Interfaces,
  BuscadorEndereco.Model.Conexao.Factory, BuscadorEndereco.Model.Conexao.Enum.Driver,
  Data.DB;

type
  TControllerConexao = class(TInterfacedObject, iControllerConexao)
    private
      FModelConexao: iModelConexao;
    public
      constructor Create;
      class function New: iControllerConexao;
      function Conectar: iControllerConexao;
      function Desconectar: iControllerConexao;
      function Conexao: TCustomConnection;

  end;

implementation

function TControllerConexao.Conectar: iControllerConexao;
begin
  Result := Self;
  FModelConexao.Conectar;
end;


function TControllerConexao.Conexao: TCustomConnection;
begin
  Result := FModelConexao.Conexao;
end;

constructor TControllerConexao.Create;
begin
  FModelConexao := TModelConexaoFactory.New
                                       .CriarConexao(SQLite);
end;

function TControllerConexao.Desconectar: iControllerConexao;
begin
  Result := Self;
  FModelConexao.Desconectar;
end;

class function TControllerConexao.New: iControllerConexao;
begin
  Result := Self.Create;
end;

end.
