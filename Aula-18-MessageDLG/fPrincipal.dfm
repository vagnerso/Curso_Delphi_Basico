object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 442
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 28
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 713
    Height = 54
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Delphi B'#225'sico - Aula 18 - Message DLG - Mensagens Interativas'
    Color = 2360256
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
    ExplicitWidth = 707
  end
  object Panel2: TPanel
    Left = 0
    Top = 54
    Width = 713
    Height = 362
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    StyleName = 'Windows'
    ExplicitWidth = 707
    ExplicitHeight = 353
    object Label1: TLabel
      Left = 368
      Top = 24
      Width = 46
      Height = 28
      Caption = 'Texto'
    end
    object btnLimparTexto: TButton
      Left = 48
      Top = 58
      Width = 225
      Height = 65
      Caption = 'Limpar texto'
      TabOrder = 0
      OnClick = btnLimparTextoClick
    end
    object mmoTexto: TMemo
      Left = 368
      Top = 58
      Width = 313
      Height = 265
      Lines.Strings = (
        'mmoTexto')
      TabOrder = 1
      StyleName = 'Windows'
    end
    object btnOpcoes: TButton
      Left = 48
      Top = 160
      Width = 225
      Height = 73
      Caption = 'Mais op'#231#245'es'
      TabOrder = 2
      OnClick = btnOpcoesClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 416
    Width = 713
    Height = 26
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Vagner Oliveira | Dicas de Programa'#231#227'o'
    Color = 2360256
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    StyleName = 'Windows'
    ExplicitTop = 407
    ExplicitWidth = 707
  end
end
