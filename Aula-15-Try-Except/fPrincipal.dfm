object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Delphi B'#225'sico - Aula 15 - Try Except'
  ClientHeight = 442
  ClientWidth = 780
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
    Width = 780
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Delphi B'#225'sico - Aula 15 - Try Except'
    Color = clMaroon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
    ExplicitWidth = 628
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 780
    Height = 381
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    StyleName = 'Windows'
    ExplicitTop = 35
    ExplicitWidth = 628
    ExplicitHeight = 375
    object Label1: TLabel
      Left = 40
      Top = 38
      Width = 124
      Height = 28
      Caption = 'Primeiro Valor'
    end
    object Label2: TLabel
      Left = 272
      Top = 38
      Width = 129
      Height = 28
      Caption = 'Segundo Valor'
    end
    object btnCalcular: TButton
      Left = 520
      Top = 51
      Width = 209
      Height = 70
      Caption = 'Calcular'
      TabOrder = 0
      OnClick = btnCalcularClick
    end
    object edtPrimeiroValor: TEdit
      Left = 40
      Top = 72
      Width = 209
      Height = 36
      TabOrder = 1
    end
    object edtSegundoValor: TEdit
      Left = 272
      Top = 72
      Width = 209
      Height = 36
      TabOrder = 2
    end
    object mmoResultado: TMemo
      Left = 40
      Top = 200
      Width = 689
      Height = 153
      Color = 13496318
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 422
    Width = 780
    Height = 20
    Align = alBottom
    BevelOuter = bvNone
    Color = clMaroon
    ParentBackground = False
    TabOrder = 2
    StyleName = 'Windows'
    ExplicitWidth = 802
  end
end
