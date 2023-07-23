unit u_listaVeiculos;

interface

uses u_veiculo, u_carro, u_caminhao, system.generics.collections, sysutils;

type
  TListaVeiculos = class
  private

  public
  FListaVeiculos: TList<TVeiculo>;

  constructor Create;
  destructor Destroy; override;

  end;

implementation

{ TListaVeiculos }

constructor TListaVeiculos.Create;
begin
  inherited Create;
  FListaVeiculos := TList<TVeiculo>.Create;
end;

destructor TListaVeiculos.Destroy;
begin
  FListaVeiculos.Free;
end;
end.
