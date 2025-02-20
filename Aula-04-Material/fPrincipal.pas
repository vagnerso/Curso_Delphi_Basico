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
  meuArrayDinamico: array of string;
  I: Integer;
begin

  SetLength(meuArrayDinamico, 10);

  for I := 0 to Length(meuArrayDinamico) -1 do
  begin
    meuArrayDinamico[i] := 'Item número : ' + i.ToString;
  end;

  for I := 0 to Length(meuArrayDinamico) -1 do
  begin
    mmoLista.Lines.Add(meuArrayDinamico[i]);
  end;

end;

procedure TfrmPrincipal.btnArrayFixoClick(Sender: TObject);
var
  meuArrayFixo: array [0..5] of string;
  I: Integer;
begin

  meuArrayFixo[0] := 'Maçã';
  meuArrayFixo[1] := 'Banana';
  meuArrayFixo[2] := 'Limão';
  meuArrayFixo[3] := 'Morango';
  meuArrayFixo[4] := 'Laranja';
  meuArrayFixo[5] := 'Abacaxi';

  for I := 0 to 5 do
  begin
    mmoLista.Lines.Add(meuArrayFixo[I]);
  end;

end;

procedure TfrmPrincipal.btnLimparListaClick(Sender: TObject);
begin
  mmoLista.Lines.Clear;
end;

end.
