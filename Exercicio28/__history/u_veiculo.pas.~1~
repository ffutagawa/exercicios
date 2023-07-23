unit u_veiculo;

interface

uses System.SysUtils;

Type
  TVeiculo = class

  Private
    FMarca: String;
    FCor: String;

    procedure setMarca(fValor: String);
    procedure setCor(fValor: String);

    function getMarca: String;
    function getCor: String;

  Public
    property Marca: string read getMarca write setMarca;
    property Cor: String read getCor write setCor;
  end;

implementation

{ TVeiculo }

{$REGION 'GETS'}

function TVeiculo.getCor: String;
begin
  result := FCor;
end;

function TVeiculo.getMarca: String;
begin
  result := FMarca;
end;
{$ENDREGION}
{$REGION 'SETS'}

procedure TVeiculo.setMarca(fValor: String);
begin
  if (fValor = EmptyStr) then
  begin
    raise Exception.Create('Informe a Marca do veículo');
  end;
  FMarca := fValor;
end;

procedure TVeiculo.setCor(fValor: String);
begin
  if (fValor = EmptyStr) then
  begin
    raise Exception.Create('Informe a Cor do veículo');
  end;
  FCor := fValor;

end;
{$ENDREGION}

end.
