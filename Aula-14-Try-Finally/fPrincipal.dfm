object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Delphi B'#225'sico - Aula 14 - Try Finally'
  ClientHeight = 347
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 28
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 569
    Height = 50
    Align = alTop
    Caption = 'Delphi B'#225'sico - Aula 14 - Try Finally'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
    ExplicitWidth = 720
  end
  object Panel2: TPanel
    Left = 0
    Top = 50
    Width = 569
    Height = 284
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 272
    ExplicitTop = 248
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 16
      Top = 35
      Width = 123
      Height = 28
      Caption = 'Primeiro valor'
    end
    object Label2: TLabel
      Left = 200
      Top = 35
      Width = 128
      Height = 28
      Caption = 'Segundo valor'
    end
    object Label3: TLabel
      Left = 384
      Top = 35
      Width = 86
      Height = 28
      Caption = 'Resultado'
    end
    object lblMensagem: TLabel
      Left = 16
      Top = 221
      Width = 537
      Height = 36
      AutoSize = False
      Color = 6458192
      ParentColor = False
      Transparent = False
    end
    object edtNumero1: TEdit
      Left = 16
      Top = 69
      Width = 153
      Height = 36
      TabOrder = 0
    end
    object edtNumero2: TEdit
      Left = 200
      Top = 69
      Width = 153
      Height = 36
      TabOrder = 1
    end
    object edtResultado: TEdit
      Left = 384
      Top = 69
      Width = 153
      Height = 36
      TabOrder = 2
    end
    object btnSomar: TButton
      Left = 16
      Top = 128
      Width = 185
      Height = 57
      Caption = 'Somar'
      TabOrder = 3
      OnClick = btnSomarClick
    end
    object Button1: TButton
      Left = 248
      Top = 128
      Width = 129
      Height = 57
      Caption = 'Button1'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 334
    Width = 569
    Height = 13
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 488
  end
end
