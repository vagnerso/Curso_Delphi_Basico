object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Delphi B'#225'sico - Aula 17 - StringList'
  ClientHeight = 490
  ClientWidth = 651
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
    Width = 651
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Delphi B'#225'sico - Aula 17 - StringList'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8388863
    Font.Height = -27
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
    Top = 50
    Width = 651
    Height = 419
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 43
    ExplicitWidth = 628
    ExplicitHeight = 449
    object mmoLista: TMemo
      Left = 0
      Top = 66
      Width = 651
      Height = 353
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitTop = 96
      ExplicitWidth = 628
    end
    object btnCriarLista: TButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 209
      Height = 60
      Align = alLeft
      Caption = 'Criar lista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnCriarListaClick
      ExplicitLeft = 6
      ExplicitTop = 17
      ExplicitHeight = 57
    end
    object btnCarregarLista: TButton
      AlignWithMargins = True
      Left = 218
      Top = 3
      Width = 209
      Height = 60
      Align = alLeft
      Caption = 'Carregar lista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnCarregarListaClick
      ExplicitLeft = 227
      ExplicitTop = 17
      ExplicitHeight = 57
    end
    object btnSalvarLista: TButton
      AlignWithMargins = True
      Left = 433
      Top = 3
      Width = 209
      Height = 60
      Align = alLeft
      Caption = 'Salvar lista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnSalvarListaClick
      ExplicitLeft = 447
      ExplicitTop = 17
      ExplicitHeight = 57
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 469
    Width = 651
    Height = 21
    Align = alBottom
    BevelOuter = bvNone
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    StyleName = 'Windows'
    ExplicitTop = 498
    ExplicitWidth = 628
  end
end
