unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    mmoListaParcelas: TMemo;
    pnlMenu: TPanel;
    Button1: TButton;
    btnLimparCampos: TButton;
    edtNumeroParcelas: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtValorParcela: TEdit;
    edtDescricaoCompra: TEdit;
    Label3: TLabel;
    procedure btnLimparCamposClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnLimparCamposClick(Sender: TObject);
begin
  edtNumeroParcelas.Text  := EmptyStr;
  edtValorParcela.Text    := EmptyStr;
  edtDescricaoCompra.Text := EmptyStr;
  edtNumeroParcelas.SetFocus;
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  lNumeroParcelas: Integer;
  I: Integer;
begin

  mmoListaParcelas.Lines.Clear;

  lNumeroParcelas := StrToIntDef(edtNumeroParcelas.Text, 1);

  for I := 0 to lNumeroParcelas - 1 do
  begin

    mmoListaParcelas.Lines.Add(
      'N�mero Parcela : ' + (I+1).ToString +
      ' | R$ Valor Parcela : ' + edtValorParcela.Text +
      ' | Descri��o Compra : ' + edtDescricaoCompra.Text
      );

  end;

end;

end.
