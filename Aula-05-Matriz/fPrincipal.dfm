object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 524
  ClientWidth = 381
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  StyleName = 'Windows'
  TextHeight = 15
  object btnArrayFixo: TButton
    Left = 64
    Top = 72
    Width = 250
    Height = 45
    Caption = 'Matriz de tamanho fixo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnArrayFixoClick
  end
  object mmoLista: TMemo
    Left = 0
    Top = 248
    Width = 381
    Height = 276
    Align = alBottom
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -17
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      'mmoLista')
    ParentFont = False
    TabOrder = 1
    StyleName = 'Windows'
  end
  object btnArrayDinamico: TButton
    Left = 64
    Top = 128
    Width = 250
    Height = 45
    Caption = 'Matriz din'#226'mica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnArrayDinamicoClick
  end
  object btnMatrizFixa: TButton
    Left = 472
    Top = 88
    Width = 250
    Height = 45
    Caption = 'Matriz de tamanho fixo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object btnMatrizDinamica: TButton
    Left = 472
    Top = 152
    Width = 250
    Height = 45
    Caption = 'Matriz din'#226'mica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 381
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Vetores em Delphi - Matriz'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
    StyleName = 'Windows'
  end
  object btnLimparLista: TButton
    Left = 64
    Top = 187
    Width = 250
    Height = 46
    Caption = 'Limpar lista'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btnLimparListaClick
  end
end
