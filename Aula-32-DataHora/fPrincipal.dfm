object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 
    'Delphi B'#225'sico - Aula 32 - Fun'#231#245'es de Data e Hora no Delphi: Apre' +
    'nda a Us'#225'-las Corretamente!'
  ClientHeight = 595
  ClientWidth = 989
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
    Width = 989
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Caption = 
      'Delphi B'#225'sico - Aula 32 - Fun'#231#245'es de Data e Hora no Delphi: Apre' +
      'nda a Us'#225'-las Corretamente!'
    Color = 13727259
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
    ExplicitWidth = 948
  end
  object Panel2: TPanel
    Left = 0
    Top = 575
    Width = 989
    Height = 20
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Vagner | Dicas de Programa'#231#227'o'
    Color = 13727259
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    StyleName = 'Windows'
    ExplicitTop = 347
    ExplicitWidth = 948
  end
  object Panel3: TPanel
    Left = 0
    Top = 50
    Width = 989
    Height = 525
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
    ExplicitWidth = 948
    ExplicitHeight = 297
    object Label2: TLabel
      Left = 504
      Top = 22
      Width = 116
      Height = 31
      Caption = 'Data/Horas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13727259
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 17
      Top = 439
      Width = 48
      Height = 31
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13727259
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object pnlObterDoCampo: TPanel
      Left = 17
      Top = 111
      Width = 450
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Obter data de um campo'
      Color = 7552521
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = pnlObterDoCampoClick
    end
    object pnlDecode: TPanel
      Left = 17
      Top = 203
      Width = 450
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Decode Date/Time'
      Color = 7552521
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnClick = pnlDecodeClick
    end
    object pnlEncode: TPanel
      Left = 17
      Top = 157
      Width = 450
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Encode Date/Time'
      Color = 7552521
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnClick = pnlEncodeClick
    end
    object pnlObterDataHora: TPanel
      Left = 17
      Top = 19
      Width = 450
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Obter Data/Hora/Data e Hora atuais'
      Color = 7552521
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      OnClick = pnlObterDataHoraClick
    end
    object pnlFormatar: TPanel
      Left = 17
      Top = 65
      Width = 450
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Formatar Data/Hora'
      Color = 7552521
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      OnClick = pnlFormatarClick
    end
    object pnlExtrairDaData: TPanel
      Left = 17
      Top = 250
      Width = 450
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Extrair de uma data'
      Color = 7552521
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
      OnClick = pnlExtrairDaDataClick
    end
    object mmoListaDataHoras: TMemo
      Left = 504
      Top = 65
      Width = 485
      Height = 454
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7552521
      Font.Height = -17
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DatePicker1: TDatePicker
      Left = 17
      Top = 479
      Width = 201
      Date = 45724.000000000000000000
      DateFormat = 'dd/mm/yyyy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7552521
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      TabOrder = 7
    end
    object pnlDiferencaEntreDatas: TPanel
      Left = 17
      Top = 297
      Width = 450
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Diferen'#231'a entre datas'
      Color = 7552521
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 8
      OnClick = pnlDiferencaEntreDatasClick
    end
    object pnlIncrementar: TPanel
      Left = 17
      Top = 343
      Width = 450
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Incrementar Data/Hora'
      Color = 7552521
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 9
      OnClick = pnlIncrementarClick
    end
    object pnlSubtrairSomar: TPanel
      Left = 17
      Top = 388
      Width = 450
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Subtrair/Somar dias em uma data'
      Color = 7552521
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 10
      OnClick = pnlSubtrairSomarClick
    end
  end
end
