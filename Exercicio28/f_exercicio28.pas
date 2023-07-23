unit f_exercicio28;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, u_veiculo,
  u_carro, u_caminhao, u_listaVeiculos;

type
  TfrmExercicio28 = class(TForm)
    pncControle: TPanel;
    lstDados: TListBox;
    edtMarcaCarro: TEdit;
    edtCorCarro: TEdit;
    bbtCarro: TButton;
    edtMarcaCaminhao: TEdit;
    edtCorCaminhao: TEdit;
    bbtCaminhao: TButton;
    bbtListaVeiculos: TButton;
    edtLugares: TEdit;
    edtCapacidade: TEdit;
    procedure bbtCarroClick(Sender: TObject);
    procedure bbtListaVeiculosClick(Sender: TObject);
    procedure bbtCaminhaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmExercicio28: TfrmExercicio28;
  FlistaVeiculo: TList;

implementation

{$R *.dfm}

procedure TfrmExercicio28.bbtCarroClick(Sender: TObject);
var
  vCarro: TCarro;
begin
  vCarro := TCarro.Create;

    vCarro.Marca := edtMarcaCarro.Text;
    vCarro.Cor := edtCorCarro.Text;
    vCarro.Lugares := StrToInt(edtLugares.Text);

    FlistaVeiculo.Add(vCarro);
end;

procedure TfrmExercicio28.bbtCaminhaoClick(Sender: TObject);
var
  vCaminhao: TCaminhao;
begin
  vCaminhao := TCaminhao.Create;

    vCaminhao.Marca := edtMarcaCaminhao.Text;
    vCaminhao.Cor := edtCorCaminhao.Text;
    vCaminhao.Capacidade := StrToInt(edtCapacidade.Text);

    FlistaVeiculo.Add(vCaminhao);
end;

procedure TfrmExercicio28.bbtListaVeiculosClick(Sender: TObject);
var
  vTempVeiculo: TVeiculo;
  i: Integer;
begin
  lstDados.Clear;
  for i := 0 to FlistaVeiculo.Count - 1 do
  begin
    vTempVeiculo := FlistaVeiculo.Items[i];
    if (vTempVeiculo is TCarro) then
    begin
      lstDados.Items.Add('CARRO: ');
      lstDados.Items.Add('Marca: ' + vTempVeiculo.Marca);
      lstDados.Items.Add('Cor: ' + vTempVeiculo.Cor);
      lstDados.Items.Add(IntToStr(TCarro(vTempVeiculo).Lugares) + ' Lugares');
    end
    else if (vTempVeiculo is TCaminhao) then
    begin
      lstDados.Items.Add('CAMINHÃO: ');
      lstDados.Items.Add('Marca: ' + vTempVeiculo.Marca);
      lstDados.Items.Add('Cor: ' + vTempVeiculo.Cor);
      lstDados.Items.Add(IntToStr(TCaminhao(vTempVeiculo).Capacidade) + ' Kg');
    end;
    lstDados.Items.Add('');
  end;
end;

procedure TfrmExercicio28.FormCreate(Sender: TObject);
begin
  FlistaVeiculo := TList.Create;
end;

procedure TfrmExercicio28.FormDestroy(Sender: TObject);
begin
  FlistaVeiculo.Free;
end;

end.
