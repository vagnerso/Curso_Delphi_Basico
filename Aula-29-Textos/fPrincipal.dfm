object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 
    'Delphi B'#225'sico - Aula 29 - Como Manipular Textos no Delphi - Stri' +
    'ngs, Copy, Pos, Length e Mais!'
  ClientHeight = 535
  ClientWidth = 1102
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
    Width = 1102
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Caption = 
      'Delphi B'#225'sico - Aula 29 - Como Manipular Textos no Delphi - Stri' +
      'ngs, Copy, Pos, Length e Mais!'
    Color = 11096118
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
    ExplicitWidth = 1084
  end
  object Panel2: TPanel
    Left = 0
    Top = 515
    Width = 1102
    Height = 20
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Vagner | Dicas de Programa'#231#227'o'
    Color = 11096118
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    StyleName = 'Windows'
    ExplicitTop = 518
  end
  object Panel3: TPanel
    Left = 0
    Top = 50
    Width = 1102
    Height = 465
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    StyleName = 'Windows'
    ExplicitWidth = 1084
    ExplicitHeight = 490
    object Label1: TLabel
      Left = 432
      Top = 16
      Width = 121
      Height = 28
      Caption = 'Texto Original'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14587009
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 768
      Top = 16
      Width = 157
      Height = 28
      Caption = 'Texto Manipulado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14587009
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object pnlStringReplace: TPanel
      Left = 17
      Top = 361
      Width = 394
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'String Replace (Substitui texto)'
      Color = 14587009
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = pnlStringReplaceClick
    end
    object pnlCopy: TPanel
      Left = 17
      Top = 169
      Width = 394
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Copy (Copia parte de um texto)'
      Color = 14587009
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnClick = pnlCopyClick
    end
    object pnlPos: TPanel
      Left = 17
      Top = 217
      Width = 394
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Pos (Posi'#231#227'o inicial de um texto)'
      Color = 14587009
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnClick = pnlPosClick
    end
    object pnlUpperCase: TPanel
      Left = 17
      Top = 25
      Width = 394
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Upper Case (Letras mai'#250'sculas)'
      Color = 14587009
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      OnClick = pnlUpperCaseClick
    end
    object pnlLowerCase: TPanel
      Left = 17
      Top = 73
      Width = 394
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Lower Case (Letras min'#250'sculas)'
      Color = 14587009
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      OnClick = pnlLowerCaseClick
    end
    object pnlToString: TPanel
      Left = 17
      Top = 409
      Width = 394
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'To String (Converte para texto)'
      Color = 14587009
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
      OnClick = pnlToStringClick
    end
    object pnlLength: TPanel
      Left = 17
      Top = 121
      Width = 394
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Length (Tamanho do texto)'
      Color = 14587009
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
      OnClick = pnlLengthClick
    end
    object mmoTextoOriginal: TMemo
      Left = 432
      Top = 50
      Width = 320
      Height = 399
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11096118
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      Lines.Strings = (
        'Lorem ipsum dolor sit amet . Os '
        'operadores gr'#225'ficos e tipogr'#225'ficos '
        'sabem disso bem, na realidade, todas '
        'as profiss'#245'es que lidam com o universo '
        'da comunica'#231#227'o t'#234'm um '
        'relacionamento est'#225'vel com essas '
        'palavras, mas o que '#233'? Lorem ipsum '#233' '
        'um texto fofo sem qualquer sentido.'
        #201' uma seq'#252#234'ncia de palavras latinas '
        'que, como est'#227'o posicionadas, n'#227'o '
        'formem frases com um sentido '
        'completo, mas d'#227'o vida a um texto de '
        'teste '#250'til para preencher espa'#231'os que '
        'ir'#227'o Posteriormente ser'#227'o ocupados a '
        'partir de textos ad hoc compostos por '
        'profissionais de comunica'#231#227'o.')
      ParentFont = False
      TabOrder = 7
    end
    object mmoTextoManipulado: TMemo
      Left = 768
      Top = 50
      Width = 320
      Height = 399
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11096118
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object pnlContainsText: TPanel
      Left = 17
      Top = 313
      Width = 394
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Contains Text (Verifica se cont'#233'm um texto)'
      Color = 14587009
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 9
      OnClick = pnlContainsTextClick
    end
    object pnlCopyPos: TPanel
      Left = 17
      Top = 265
      Width = 394
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Copy + Pos (Copiar a partir de um caracter)'
      Color = 14587009
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 10
      OnClick = pnlCopyPosClick
    end
  end
end
