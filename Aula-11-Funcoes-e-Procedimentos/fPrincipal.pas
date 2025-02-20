unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    pnlTitulo: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    edtNumero1: TEdit;
    edtNumero2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    lblResultado: TLabel;
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnSomarSubtrair: TButton;
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnSomarSubtrairClick(Sender: TObject);
  private
    { Private declarations }

     function somar(pNumero1, pNumero2: Integer): Integer;
     function subtrair(pNumero1, pNumero2: Integer): Integer;
     procedure limparCampos;

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnSomarClick(Sender: TObject);
var
  lNumero1: Integer;
  lNumero2: Integer;
begin

  lNumero1 := StrToIntDef(edtNumero1.Text, 0);
  lNumero2 := StrToIntDef(edtNumero2.Text, 0);

  lblResultado.Caption := 'Soma = ' + IntToStr(somar(lNumero1, lNumero2));
  limparCampos;

end;

procedure TfrmPrincipal.btnSomarSubtrairClick(Sender: TObject);
var
  lNumero1: Integer;
  lNumero2: Integer;
begin

  lNumero1 := StrToIntDef(edtNumero1.Text, 0);
  lNumero2 := StrToIntDef(edtNumero2.Text, 0);

  lblResultado.Caption :=
              ' Soma = ' + IntToStr(somar(lNumero1, lNumero2)) + ' | ' +
              ' Subtração = ' + IntToStr(subtrair(lNumero1, lNumero2));
  limparCampos;

end;

procedure TfrmPrincipal.btnSubtrairClick(Sender: TObject);
var
  lNumero1: Integer;
  lNumero2: Integer;
begin

  lNumero1 := StrToIntDef(edtNumero1.Text, 0);
  lNumero2 := StrToIntDef(edtNumero2.Text, 0);

  lblResultado.Caption := 'Subtração = ' + IntToStr(subtrair(lNumero1, lNumero2));
  limparCampos;

end;

function TfrmPrincipal.somar(pNumero1, pNumero2: Integer): Integer;
begin
  Result := pNumero1 + pNumero2;
end;

function TfrmPrincipal.subtrair(pNumero1, pNumero2: Integer): Integer;
begin
  Result := pNumero1 - pNumero2;
end;

procedure TfrmPrincipal.limparCampos;
begin
  edtNumero1.Clear;
  edtNumero2.Clear;
  edtNumero1.SetFocus;
end;

end.
