unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnCalcular: TButton;
    edtPrimeiroValor: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtSegundoValor: TEdit;
    mmoResultado: TMemo;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
var
  lResultado: Double;
begin

  if Trim(edtPrimeiroValor.Text) = '' then
  begin
    raise Exception.Create('Erro! O primeiro valor � obrigat�rio');
  end;

  try

  lResultado :=
                StrToFloat(edtPrimeiroValor.Text) /
                StrToFloat(edtSegundoValor.Text);

  mmoResultado.Text := 'O resultado desta divis�o �: ' +
                       lResultado.ToString;
  except
    on E: EZeroDivide do
    begin
      mmoResultado.Text := 'Erro ao tentar calcular, foi feita um divis�o por zero, essa opera��o n�o � permitida.' + sLineBreak +
                  E.Message;
    end;
    on E: Exception do
    begin
      mmoResultado.Text := 'Ocorreu um erro geral ao tentar efetuar o c�lculo' + sLineBreak +
                  E.Message;
    end;
  end;

end;

end.
