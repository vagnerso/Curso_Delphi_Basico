object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Delphi B'#225'sico - Aula 25 - Excluindo arquivos'
  ClientHeight = 449
  ClientWidth = 557
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
    Width = 557
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Delphi B'#225'sico - Aula 25 - Excluindo arquivos'
    Color = 10168756
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
    ExplicitWidth = 551
  end
  object Panel2: TPanel
    Left = 0
    Top = 432
    Width = 557
    Height = 17
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    StyleName = 'Windows'
    ExplicitTop = 423
    ExplicitWidth = 551
  end
  object Panel3: TPanel
    Left = 0
    Top = 50
    Width = 557
    Height = 382
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    StyleName = 'Windows'
    ExplicitWidth = 551
    ExplicitHeight = 373
    object btnApagarArquivo: TButton
      Left = 80
      Top = 128
      Width = 389
      Height = 97
      Caption = 'Apagar arquivo'
      TabOrder = 0
      WordWrap = True
      OnClick = btnApagarArquivoClick
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
