program Exercicio28;

uses
  Vcl.Forms,
  f_exercicio28 in 'f_exercicio28.pas' {frmExercicio28},
  u_veiculo in 'u_veiculo.pas',
  u_carro in 'u_carro.pas',
  u_caminhao in 'u_caminhao.pas',
  u_listaVeiculos in 'u_listaVeiculos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExercicio28, frmExercicio28);
  Application.Run;
end.
