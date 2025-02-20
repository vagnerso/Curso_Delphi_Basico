unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    btnArrayFixo: TButton;
    mmoLista: TMemo;
    btnArrayDinamico: TButton;
    btnMatrizFixa: TButton;
    btnMatrizDinamica: TButton;
    Panel1: TPanel;
    btnLimparLista: TButton;
    procedure btnLimparListaClick(Sender: TObject);
    procedure btnArrayFixoClick(Sender: TObject);
    procedure btnArrayDinamicoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnArrayDinamicoClick(Sender: TObject);
var
  minhaMatrizDinamica: array of array of string;
  I: Integer;
begin

  SetLength(minhaMatrizDinamica, 50, 2);

  for I := 0 to Length(minhaMatrizDinamica)-1 do
  begin
    minhaMatrizDinamica[I, 0] := 'Item : ' + (I + 1).ToString;
    minhaMatrizDinamica[I, 1] := 'Preço R$ : ' + Random(100).ToString;
  end;

  for I := 0 to Length(minhaMatrizDinamica)-1 do
  begin
    mmoLista.Lines.Add(minhaMatrizDinamica[I, 0] + ' | ' +
    minhaMatrizDinamica[I, 1]);
  end;

end;

procedure TfrmPrincipal.btnArrayFixoClick(Sender: TObject);
var
  minhaMatrizFixa: array [0..2, 0..2] of string;
  I: Integer;
begin

  minhaMatrizFixa[0, 0] := 'Maçã';
  minhaMatrizFixa[0, 1] := 'Qtde: 2';
  minhaMatrizFixa[0, 2] := 'Preço: R$10,00';

  minhaMatrizFixa[1, 0] := 'Banana';
  minhaMatrizFixa[1, 1] := 'Qtde: 5';
  minhaMatrizFixa[1, 2] := 'Preço: R$8,99';

  minhaMatrizFixa[2, 0] := 'Limão';
  minhaMatrizFixa[2, 1] := 'Qtde: 3';
  minhaMatrizFixa[2, 2] := 'Preço: R$5,50';

  for I := 0 to 2 do
  begin

    mmoLista.Lines.Add(
      minhaMatrizFixa[I, 0] + ' | ' +
      minhaMatrizFixa[I, 1] + ' | ' +
      minhaMatrizFixa[I, 2] + ' | '

    );

  end;

end;

procedure TfrmPrincipal.btnLimparListaClick(Sender: TObject);
begin
  mmoLista.Lines.Clear;
end;

end.
