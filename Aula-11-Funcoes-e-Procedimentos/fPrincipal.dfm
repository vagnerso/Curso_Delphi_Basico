object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Aula 11 - Fun'#231#245'es e Procedimentos - Calculadora'
  ClientHeight = 303
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object pnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 505
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Aula 11 - Fun'#231#245'es e Procedimentos - Calculadora'
    Color = clMaroon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
    ExplicitWidth = 550
  end
  object Panel1: TPanel
    Left = 0
    Top = 49
    Width = 225
    Height = 197
    Align = alLeft
    BevelOuter = bvNone
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    StyleName = 'Windows'
    ExplicitHeight = 192
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 186
      Height = 23
      Caption = 'Informe o primeiro valor'
    end
    object Label2: TLabel
      Left = 16
      Top = 91
      Width = 188
      Height = 23
      Caption = 'Informe o segundo valor'
    end
    object edtNumero1: TEdit
      Left = 16
      Top = 56
      Width = 186
      Height = 31
      TabOrder = 0
    end
    object edtNumero2: TEdit
      Left = 16
      Top = 120
      Width = 186
      Height = 31
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 246
    Width = 505
    Height = 57
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    StyleName = 'Windows'
    ExplicitTop = 372
    ExplicitWidth = 480
    object lblResultado: TLabel
      Left = 0
      Top = 0
      Width = 505
      Height = 57
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'RESULTADO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 32
      ExplicitTop = 16
      ExplicitWidth = 417
      ExplicitHeight = 28
    end
  end
  object Panel3: TPanel
    Left = 225
    Top = 49
    Width = 280
    Height = 197
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    ExplicitLeft = 272
    ExplicitWidth = 278
    ExplicitHeight = 450
    object btnSomar: TButton
      Left = 17
      Top = 30
      Width = 120
      Height = 65
      Caption = 'Somar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnSomarClick
    end
    object btnSubtrair: TButton
      Left = 143
      Top = 30
      Width = 120
      Height = 65
      Caption = 'Subtrair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnSubtrairClick
    end
    object btnSomarSubtrair: TButton
      Left = 16
      Top = 101
      Width = 247
      Height = 65
      Caption = 'Exibir soma e subtra'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnSomarSubtrairClick
    end
  end
end
