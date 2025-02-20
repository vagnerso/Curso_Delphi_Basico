object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Delphi B'#225'sico - Aula 23 - Criando pastas'
  ClientHeight = 329
  ClientWidth = 538
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
    Width = 538
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Delphi B'#225'sico - Aula 23 - Criando pastas'
    Color = 8388672
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
    ExplicitWidth = 750
  end
  object Panel2: TPanel
    Left = 0
    Top = 312
    Width = 538
    Height = 17
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    StyleName = 'Windows'
    ExplicitTop = 551
    ExplicitWidth = 750
  end
  object Panel3: TPanel
    Left = 0
    Top = 50
    Width = 538
    Height = 262
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    StyleName = 'Windows'
    ExplicitWidth = 750
    ExplicitHeight = 501
    object Button1: TButton
      Left = 120
      Top = 40
      Width = 265
      Height = 49
      Caption = 'Criar pasta'
      TabOrder = 0
      WordWrap = True
      OnClick = Button1Click
    end
    object Button5: TButton
      Left = 120
      Top = 111
      Width = 265
      Height = 50
      Caption = 'For'#231'ar cria'#231#227'o da pasta'
      TabOrder = 1
      WordWrap = True
      OnClick = Button5Click
    end
    object Button2: TButton
      Left = 120
      Top = 184
      Width = 265
      Height = 49
      Caption = 'Verificar pasta'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
end
