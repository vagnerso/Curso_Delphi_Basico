object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 
    'Delphi B'#225'sico - Aula 30 - Domine a Manipula'#231#227'o de N'#250'meros no Del' +
    'phi com Fun'#231#245'es Essenciais!'
  ClientHeight = 376
  ClientWidth = 954
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
    Width = 954
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Caption = 
      'Delphi B'#225'sico - Aula 31 - Arredondamento de N'#250'meros no Delphi: T' +
      'udo o que Voc'#234' Precisa Saber!'
    Color = 6458192
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
    ExplicitWidth = 874
  end
  object Panel2: TPanel
    Left = 0
    Top = 356
    Width = 954
    Height = 20
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Vagner | Dicas de Programa'#231#227'o'
    Color = 6458192
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    StyleName = 'Windows'
    ExplicitTop = 387
    ExplicitWidth = 874
  end
  object Panel3: TPanel
    Left = 0
    Top = 50
    Width = 954
    Height = 306
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    StyleName = 'Windows'
    ExplicitWidth = 874
    ExplicitHeight = 337
    object Label1: TLabel
      Left = 489
      Top = 186
      Width = 190
      Height = 31
      Caption = 'Valor arredondado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8551211
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 17
      Top = 186
      Width = 347
      Height = 31
      Caption = 'Informe o valor a ser arredondado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8551211
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object pnlCeil: TPanel
      Left = 17
      Top = 113
      Width = 450
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Ceil (Arredonda para cima)'
      Color = 8551211
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = pnlCeilClick
    end
    object pnlRoundTo: TPanel
      Left = 489
      Top = 65
      Width = 450
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'RoundTo (Arredondamento banc'#225'rio)'
      Color = 8551211
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnClick = pnlRoundToClick
    end
    object pnlRound: TPanel
      Left = 489
      Top = 17
      Width = 450
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Round (Arredonda para o valor mais pr'#243'ximo)'
      Color = 8551211
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnClick = pnlRoundClick
    end
    object pnlTrunc: TPanel
      Left = 17
      Top = 17
      Width = 450
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Trunc (Remove a parte decimal)'
      Color = 8551211
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      OnClick = pnlTruncClick
    end
    object pnlFloor: TPanel
      Left = 17
      Top = 65
      Width = 450
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Floor (Arredonda para baixo)'
      Color = 8551211
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      OnClick = pnlFloorClick
    end
    object pnlSimpleRoundTo: TPanel
      Left = 489
      Top = 111
      Width = 450
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'SimpleRoundTo (Arredondamento padr'#227'o)'
      Color = 8551211
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
      OnClick = pnlSimpleRoundToClick
    end
    object edtValorArredondado: TEdit
      Left = 489
      Top = 220
      Width = 450
      Height = 53
      Color = 6458192
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -33
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object edtValor: TEdit
      Left = 17
      Top = 220
      Width = 450
      Height = 53
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8551211
      Font.Height = -33
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
end
