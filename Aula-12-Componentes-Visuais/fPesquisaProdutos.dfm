object frmPesquisaProdutos: TfrmPesquisaProdutos
  Left = 0
  Top = 0
  Caption = 'Pesquisa de produtos'
  ClientHeight = 666
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 23
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 727
    Height = 41
    Align = alTop
    Caption = 'Pesquisa de Produtos'
    Color = 1598906
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
    ExplicitWidth = 718
  end
  object Panel2: TPanel
    Left = 0
    Top = 87
    Width = 727
    Height = 80
    Align = alTop
    TabOrder = 1
    ExplicitTop = 41
    ExplicitWidth = 691
    object Label1: TLabel
      Left = 16
      Top = 11
      Width = 71
      Height = 23
      Caption = 'Pesquisar'
    end
    object Label2: TLabel
      Left = 248
      Top = 11
      Width = 38
      Height = 23
      Caption = 'Filtro'
    end
    object edtPesquisar: TEdit
      Left = 16
      Top = 40
      Width = 217
      Height = 31
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 248
      Top = 40
      Width = 145
      Height = 31
      ItemIndex = 0
      TabOrder = 1
      Text = 'Todos'
      Items.Strings = (
        'Todos'
        'Ativos'
        'Inativos')
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 167
    Width = 727
    Height = 499
    Align = alClient
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -17
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 727
    Height = 46
    Align = alTop
    TabOrder = 3
    object Button1: TButton
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 150
      Height = 42
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Adicionar'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitHeight = 44
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 154
      Top = 2
      Width = 150
      Height = 42
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Editar'
      TabOrder = 1
      OnClick = Button2Click
      ExplicitLeft = 151
      ExplicitTop = 1
      ExplicitHeight = 44
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 306
      Top = 2
      Width = 150
      Height = 42
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Excluir'
      TabOrder = 2
      ExplicitLeft = 301
      ExplicitTop = 1
      ExplicitHeight = 44
    end
  end
end
