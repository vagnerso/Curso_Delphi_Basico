object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 349
  ClientWidth = 542
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 542
    Height = 57
    Align = alTop
    Caption = 'Aula 10 - Estruturas de Repeti'#231#227'o - Repeat Until'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 587
  end
  object btnTeste: TButton
    Left = 136
    Top = 160
    Width = 241
    Height = 57
    Caption = 'Executar comando'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnTesteClick
  end
end
