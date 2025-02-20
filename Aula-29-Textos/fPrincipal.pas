unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.ExtCtrls, Vcl.FileCtrl, Vcl.ExtDlgs, System.IOUtils, Vcl.Imaging.pngimage,
  Vcl.WinXPanels, StrUtils;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    pnlStringReplace: TPanel;
    pnlCopy: TPanel;
    pnlPos: TPanel;
    pnlUpperCase: TPanel;
    pnlLowerCase: TPanel;
    pnlToString: TPanel;
    pnlLength: TPanel;
    mmoTextoOriginal: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    mmoTextoManipulado: TMemo;
    pnlContainsText: TPanel;
    pnlCopyPos: TPanel;
    procedure pnlUpperCaseClick(Sender: TObject);
    procedure pnlLowerCaseClick(Sender: TObject);
    procedure pnlLengthClick(Sender: TObject);
    procedure pnlCopyClick(Sender: TObject);
    procedure pnlPosClick(Sender: TObject);
    procedure pnlCopyPosClick(Sender: TObject);
    procedure pnlContainsTextClick(Sender: TObject);
    procedure pnlStringReplaceClick(Sender: TObject);
    procedure pnlToStringClick(Sender: TObject);

  private

    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.pnlContainsTextClick(Sender: TObject);
begin

  if ContainsText(mmoTextoOriginal.Text, 'Lorem') then
  begin
    mmoTextoManipulado.Text := 'Encontrou no texto';
  end
  else
  begin
    mmoTextoManipulado.Text := 'Não encontrou no texto';
  end;

end;

procedure TfrmPrincipal.pnlCopyClick(Sender: TObject);
begin
  mmoTextoManipulado.Text :=
    Copy(mmoTextoOriginal.Text, 10, 15);
end;

procedure TfrmPrincipal.pnlCopyPosClick(Sender: TObject);
begin
  mmoTextoManipulado.Text :=
    Copy(mmoTextoOriginal.Text,
         Pos('?', mmoTextoOriginal.Text) + 2,
         Length(mmoTextoOriginal.Text));
end;

procedure TfrmPrincipal.pnlLengthClick(Sender: TObject);
begin
  mmoTextoManipulado.Text :=
    Length(mmoTextoOriginal.Text).ToString;
end;

procedure TfrmPrincipal.pnlLowerCaseClick(Sender: TObject);
begin
  mmoTextoManipulado.Text :=
    AnsiLowerCase(mmoTextoOriginal.Text);
end;

procedure TfrmPrincipal.pnlPosClick(Sender: TObject);
begin
  mmoTextoManipulado.Text :=
    Pos('operadores', mmoTextoOriginal.Text).ToString;
end;

procedure TfrmPrincipal.pnlStringReplaceClick(Sender: TObject);
begin
  mmoTextoManipulado.Text :=
    StringReplace(mmoTextoOriginal.Text,
                  'lorem',
                  'Gato Amarelo',
                  [rfReplaceAll, rfIgnoreCase]);
end;

procedure TfrmPrincipal.pnlToStringClick(Sender: TObject);
var
  lContador: Integer;
  lPreco: Currency;
  lPeso: Double;
begin

  lContador := 1000;
  lPreco := 99.99;
  lPeso := 1.598;

  //mmoTextoManipulado.Text := lContador.ToString;

  //mmoTextoManipulado.Text := lPreco.ToString;
  //mmoTextoManipulado.Text := lPeso.ToString;

  //mmoTextoManipulado.Text := IntToStr(lContador);

  //mmoTextoManipulado.Text := CurrToStr(lPreco);

  mmoTextoManipulado.Text := FloatToStr(lPeso);


end;

procedure TfrmPrincipal.pnlUpperCaseClick(Sender: TObject);
begin
  mmoTextoManipulado.Text :=
    AnsiUpperCase(mmoTextoOriginal.Text);
end;

end.

