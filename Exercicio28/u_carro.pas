unit u_carro;

interface

uses System.SysUtils, u_veiculo;

Type
  TCarro = class (TVeiculo)

  private
  FLugares: Integer;
  function getLugares: Integer;
  procedure setLugares (fValor: Integer);

  public
  property Lugares: Integer read getLugares write setLugares;

end;

implementation

{ TCarro }

function TCarro.getLugares: Integer;
begin
  Result := FLugares;
end;

procedure TCarro.setLugares(fValor: Integer);
begin
  if (fValor < 0) then
  begin
    raise Exception.Create('Valor não pode ser menor que 0');
  end;
  FLugares := fValor;
end;

 { if fValor = EmptyStr) then
  begin
    raise Exception.Create('É preciso informar a quantidade de lugares');
  end;
  FLugares := fValor;
end; }
end.
