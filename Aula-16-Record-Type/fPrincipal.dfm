object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Delphi B'#225'sico - Aula 16 - Record Types'
  ClientHeight = 536
  ClientWidth = 628
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
    Width = 628
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Delphi B'#225'sico - Aula 16 - Record Types'
    Color = 16711808
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
  end
  object Panel2: TPanel
    Left = 0
    Top = 518
    Width = 628
    Height = 18
    Align = alBottom
    BevelOuter = bvNone
    Color = 8388672
    ParentBackground = False
    TabOrder = 1
    StyleName = 'Windows'
    ExplicitTop = 424
  end
  object Panel3: TPanel
    Left = 0
    Top = 50
    Width = 628
    Height = 468
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    StyleName = 'Windows'
    ExplicitTop = 64
    ExplicitHeight = 360
    object btnPessoa: TButton
      Left = 144
      Top = 24
      Width = 321
      Height = 73
      Caption = 'Exibir dados da pessoa'
      TabOrder = 0
      OnClick = btnPessoaClick
    end
    object mmoPessoa: TMemo
      Left = 16
      Top = 120
      Width = 593
      Height = 337
      Lines.Strings = (
        'mmoPessoa')
      TabOrder = 1
    end
  end
end
