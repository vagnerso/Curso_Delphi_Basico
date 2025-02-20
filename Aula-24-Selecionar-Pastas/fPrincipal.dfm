object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Delphi B'#225'sico - Aula 24 - Selecionando pastas'
  ClientHeight = 349
  ClientWidth = 522
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
    Width = 522
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Delphi B'#225'sico - Aula 24 - Selecionando pastas'
    Color = 2862680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
    ExplicitWidth = 532
  end
  object Panel2: TPanel
    Left = 0
    Top = 332
    Width = 522
    Height = 17
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    StyleName = 'Windows'
    ExplicitTop = 303
    ExplicitWidth = 532
  end
  object Panel3: TPanel
    Left = 0
    Top = 50
    Width = 522
    Height = 282
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    StyleName = 'Windows'
    ExplicitWidth = 532
    ExplicitHeight = 253
    object Button1: TButton
      Left = 64
      Top = 32
      Width = 389
      Height = 97
      Caption = 'Selecionar pasta com "Select Directory"'
      TabOrder = 0
      WordWrap = True
      OnClick = Button1Click
    end
    object Button5: TButton
      Left = 64
      Top = 151
      Width = 389
      Height = 98
      Caption = 'Selecionar pasta com "File Open Dialog"'
      TabOrder = 1
      WordWrap = True
      OnClick = Button5Click
    end
  end
  object FileOpenDialog1: TFileOpenDialog
    DefaultFolder = 'c:\temp'
    FavoriteLinks = <>
    FileTypes = <>
    Options = [fdoPickFolders]
    Title = 'Delphi B'#225'sico - Aula 24 - Selecionando pastas'
    Left = 48
    Top = 272
  end
end
