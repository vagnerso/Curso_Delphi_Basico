object frmCadastroProdutos: TfrmCadastroProdutos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produtos'
  ClientHeight = 542
  ClientWidth = 726
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 28
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 726
    Height = 41
    Align = alTop
    Caption = 'Cadastro de Produtos'
    Color = 1598906
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
    ExplicitWidth = 550
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 726
    Height = 446
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 39
    ExplicitWidth = 719
    ExplicitHeight = 422
    object Label1: TLabel
      Left = 16
      Top = 22
      Width = 54
      Height = 28
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 16
      Top = 102
      Width = 49
      Height = 28
      Caption = 'Pre'#231'o'
    end
    object Label3: TLabel
      Left = 16
      Top = 190
      Width = 103
      Height = 28
      Caption = 'Observa'#231#227'o'
    end
    object edtNome: TEdit
      Left = 16
      Top = 56
      Width = 289
      Height = 36
      TabOrder = 0
      TextHint = 'Digite o nome'
    end
    object rdgSituacaoProduto: TRadioGroup
      Left = 416
      Top = 22
      Width = 260
      Height = 91
      Caption = 'Situa'#231#227'o do produto'
      Columns = 2
      Items.Strings = (
        'Ativo'
        'Inativo')
      TabOrder = 1
    end
    object edtPreco: TEdit
      Left = 16
      Top = 136
      Width = 289
      Height = 36
      TabOrder = 2
      TextHint = 'Digite o nome'
    end
    object mmoObs: TMemo
      Left = 16
      Top = 231
      Width = 689
      Height = 185
      Lines.Strings = (
        'mmoObs')
      TabOrder = 3
    end
    object chkPromocao: TCheckBox
      Left = 417
      Top = 119
      Width = 185
      Height = 41
      Caption = 'Promo'#231#227'o'
      TabOrder = 4
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 487
    Width = 726
    Height = 55
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 496
    ExplicitWidth = 748
    object btnSalvar: TButton
      AlignWithMargins = True
      Left = 604
      Top = 2
      Width = 120
      Height = 51
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = btnSalvarClick
      ExplicitTop = 4
    end
    object btnCancelar: TButton
      AlignWithMargins = True
      Left = 482
      Top = 2
      Width = 120
      Height = 51
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
      ExplicitLeft = 549
    end
  end
end
