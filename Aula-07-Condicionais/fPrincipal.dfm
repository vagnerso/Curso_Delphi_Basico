object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 532
  ClientWidth = 895
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 20
  object Label4: TLabel
    Left = 8
    Top = 299
    Width = 52
    Height = 20
    Caption = 'Clientes'
  end
  object Label5: TLabel
    Left = 280
    Top = 299
    Width = 89
    Height = 20
    Caption = 'Fornecedores'
  end
  object Label6: TLabel
    Left = 584
    Top = 294
    Width = 78
    Height = 20
    Caption = 'Vendedores'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 895
    Height = 57
    Align = alTop
    Caption = 'Aula 07 - Condicionais - Cadastro de Pessoas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 647
  end
  object pnlCampos: TPanel
    Left = 0
    Top = 57
    Width = 895
    Height = 174
    Align = alTop
    TabOrder = 1
    ExplicitTop = 107
    ExplicitWidth = 609
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 41
      Height = 20
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 16
      Top = 75
      Width = 62
      Height = 20
      Caption = 'Endere'#231'o'
    end
    object Label3: TLabel
      Left = 433
      Top = 16
      Width = 101
      Height = 20
      Caption = 'Tipo de pessoa'
    end
    object edtNome: TEdit
      Left = 16
      Top = 37
      Width = 313
      Height = 28
      TabOrder = 0
    end
    object edtEndereco: TEdit
      Left = 16
      Top = 96
      Width = 313
      Height = 28
      TabOrder = 1
    end
    object rdgFisicaOuJuridica: TRadioGroup
      Left = 433
      Top = 75
      Width = 145
      Height = 86
      Caption = 'F'#237'sica/Jur'#237'dica'
      ItemIndex = 0
      Items.Strings = (
        'F'#237'sica'
        'Jur'#237'dica')
      TabOrder = 2
    end
    object cbxTipo: TComboBox
      Left = 433
      Top = 37
      Width = 145
      Height = 28
      ItemIndex = 0
      TabOrder = 3
      Text = 'Cliente'
      Items.Strings = (
        'Cliente'
        'Fornecedor'
        'Vendedor')
    end
  end
  object mmoListaClientes: TMemo
    Left = 8
    Top = 320
    Width = 241
    Height = 193
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object pnlMenu: TPanel
    Left = 0
    Top = 231
    Width = 895
    Height = 50
    Align = alTop
    TabOrder = 3
    ExplicitLeft = 8
    ExplicitTop = 287
    ExplicitWidth = 609
    object Button1: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 168
      Height = 42
      Align = alLeft
      Caption = 'Cadastrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 178
      Top = 4
      Width = 168
      Height = 42
      Align = alLeft
      Caption = 'Limpar Campos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object mmoListaFornecedores: TMemo
    Left = 280
    Top = 320
    Width = 281
    Height = 193
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object mmoListaVendedores: TMemo
    Left = 584
    Top = 320
    Width = 289
    Height = 193
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
end
