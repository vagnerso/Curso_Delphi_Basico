object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Aula - 13 - Componentes N'#227'o Visuais'
  ClientHeight = 540
  ClientWidth = 688
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
    Width = 688
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Aula 13 - Componentes N'#227'o Visuais'
    Color = 6458192
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
    Top = 50
    Width = 688
    Height = 472
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    StyleName = 'Windows'
    ExplicitWidth = 628
    ExplicitHeight = 351
    object btnTimer: TButton
      Left = 359
      Top = 40
      Width = 306
      Height = 65
      Caption = 'Habilitar Timer'
      TabOrder = 0
      OnClick = btnTimerClick
    end
    object btnTabelaMemoria: TButton
      Left = 176
      Top = 128
      Width = 345
      Height = 65
      Caption = 'Exemplo Tabela de Mem'#243'ria'
      TabOrder = 1
      OnClick = btnTabelaMemoriaClick
    end
    object Button1: TButton
      Left = 40
      Top = 40
      Width = 289
      Height = 65
      Caption = 'Desabilitar Timer'
      TabOrder = 2
      OnClick = Button1Click
    end
    object grdLista: TDBGrid
      Left = 9
      Top = 233
      Width = 656
      Height = 225
      DataSource = dtsLista
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -20
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 522
    Width = 688
    Height = 18
    Align = alBottom
    BevelOuter = bvNone
    Color = clGray
    ParentBackground = False
    TabOrder = 2
    StyleName = 'Windows'
    ExplicitTop = 424
    ExplicitWidth = 628
  end
  object tmrMensagem: TTimer
    Interval = 3000
    OnTimer = tmrMensagemTimer
    Left = 40
    Top = 178
  end
  object memLista: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 576
    Top = 194
    object memListaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object memListaNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
  end
  object dtsLista: TDataSource
    DataSet = memLista
    Left = 472
    Top = 266
  end
end
