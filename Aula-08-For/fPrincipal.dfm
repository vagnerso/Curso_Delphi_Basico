object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema de parcelas'
  ClientHeight = 620
  ClientWidth = 621
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 621
    Height = 41
    Align = alTop
    Caption = 'Aula 08 - For - Sistema de Parcelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 224
    ExplicitTop = 312
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 621
    Height = 96
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 12
      Top = 11
      Width = 153
      Height = 23
      Caption = 'N'#250'mero de Parcelas'
    end
    object Label2: TLabel
      Left = 188
      Top = 11
      Width = 122
      Height = 23
      Caption = 'Valor da Parcela'
    end
    object Label3: TLabel
      Left = 364
      Top = 11
      Width = 160
      Height = 23
      Caption = 'Descri'#231#227'o da compra'
    end
    object edtNumeroParcelas: TEdit
      Left = 12
      Top = 40
      Width = 153
      Height = 31
      NumbersOnly = True
      TabOrder = 0
    end
    object edtValorParcela: TEdit
      Left = 188
      Top = 40
      Width = 153
      Height = 31
      TabOrder = 1
    end
    object edtDescricaoCompra: TEdit
      Left = 364
      Top = 40
      Width = 245
      Height = 31
      TabOrder = 2
    end
  end
  object mmoListaParcelas: TMemo
    Left = 0
    Top = 195
    Width = 621
    Height = 425
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitLeft = 80
    ExplicitTop = 352
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object pnlMenu: TPanel
    Left = 0
    Top = 137
    Width = 621
    Height = 58
    Align = alTop
    TabOrder = 3
    ExplicitTop = 275
    object Button1: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 200
      Height = 50
      Align = alLeft
      Caption = 'Gerar Parcelas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitHeight = 56
    end
    object btnLimparCampos: TButton
      AlignWithMargins = True
      Left = 210
      Top = 4
      Width = 192
      Height = 50
      Align = alLeft
      Caption = 'Limpar campos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnLimparCamposClick
      ExplicitTop = 2
    end
  end
end
