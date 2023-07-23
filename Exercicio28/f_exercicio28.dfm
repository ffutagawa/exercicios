object frmExercicio28: TfrmExercicio28
  Left = 0
  Top = 0
  Caption = 'Exercicio 28'
  ClientHeight = 394
  ClientWidth = 291
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pncControle: TPanel
    Left = 0
    Top = 0
    Width = 291
    Height = 394
    Align = alClient
    TabOrder = 0
    object lstDados: TListBox
      Left = 16
      Top = 128
      Width = 257
      Height = 225
      ItemHeight = 13
      TabOrder = 9
    end
    object edtMarcaCarro: TEdit
      Left = 16
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
      TextHint = 'Marca do Carro'
    end
    object edtCorCarro: TEdit
      Left = 16
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 1
      TextHint = 'Cor do Carro'
    end
    object bbtCarro: TButton
      Left = 16
      Top = 97
      Width = 121
      Height = 25
      Caption = 'Adicionar Carro'
      TabOrder = 3
      OnClick = bbtCarroClick
    end
    object edtMarcaCaminhao: TEdit
      Left = 152
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 4
      TextHint = 'Marca do Caminh'#227'o'
    end
    object edtCorCaminhao: TEdit
      Left = 152
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 5
      TextHint = 'Cor do Caminh'#227'o'
    end
    object bbtCaminhao: TButton
      Left = 152
      Top = 97
      Width = 121
      Height = 25
      Caption = 'Adicionar Caminh'#227'o'
      TabOrder = 7
      OnClick = bbtCaminhaoClick
    end
    object bbtListaVeiculos: TButton
      Left = 96
      Top = 359
      Width = 105
      Height = 25
      Caption = 'Lista Veiculos'
      TabOrder = 8
      OnClick = bbtListaVeiculosClick
    end
    object edtLugares: TEdit
      Left = 16
      Top = 70
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edtCapacidade: TEdit
      Left = 152
      Top = 70
      Width = 121
      Height = 21
      TabOrder = 6
    end
  end
end
