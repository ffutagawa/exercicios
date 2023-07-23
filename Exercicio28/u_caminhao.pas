unit u_caminhao;

interface

uses System.SysUtils, u_veiculo;

Type
  TCaminhao = class (TVeiculo)

  private
  FCapacidade: Integer;
  function getCapacidade: Integer;
  procedure setCapacidade (fValor: Integer);

  public
  property Capacidade: Integer read getCapacidade write setCapacidade;

end;

implementation

{ TCaminhao }

function TCaminhao.getCapacidade: Integer;
begin
  Result := FCapacidade;
end;

procedure TCaminhao.setCapacidade(fValor: Integer);
begin
  if (fValor < 0) then
  begin
    raise Exception.Create('Valor não pode ser menor que 0');
  end;
  FCapacidade := fValor;
end;

end.
