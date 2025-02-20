unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    mmoLista: TMemo;
    btnCriarLista: TButton;
    btnCarregarLista: TButton;
    btnSalvarLista: TButton;
    procedure btnCriarListaClick(Sender: TObject);
    procedure btnCarregarListaClick(Sender: TObject);
    procedure btnSalvarListaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCarregarListaClick(Sender: TObject);
var
  lListaFrutasMercado: TStringList;
begin

  lListaFrutasMercado := TStringList.Create;
  try

    lListaFrutasMercado.LoadFromFile('C:\Arquivos_de_Trabalho\Projetos_Delphi\Curso_Delphi_Basico\Aula-17-String-List\Arquivos\lista_de_frutas_mercado.txt');
    mmoLista.Text := UTF8ToString(lListaFrutasMercado.Text);

  finally
    lListaFrutasMercado.Free;
  end;

end;

procedure TForm1.btnCriarListaClick(Sender: TObject);
var
  lListaFrutas: TStringList;
begin

  lListaFrutas := TStringList.Create;
  try

    lListaFrutas.Add('Maçã');
    lListaFrutas.Add('Limão');
    lListaFrutas.Add('Banana');
    lListaFrutas.Add('Abacaxi');
    lListaFrutas.Add('Melancia');
    lListaFrutas.Add('Bergamota');

    mmoLista.Clear;
    mmoLista.Text := lListaFrutas.Text;
    mmoLista.Lines.Add('Index do Abacaxi:' +
                       lListaFrutas.IndexOf('Abacaxi').ToString);

  finally
    lListaFrutas.Free;
  end;

end;

procedure TForm1.btnSalvarListaClick(Sender: TObject);
var
  lListaFrutasMercado: TStringList;
begin

  lListaFrutasMercado := TStringList.Create;
  try

    lListaFrutasMercado.Add('Limão');
    lListaFrutasMercado.Add('Maçã');
    lListaFrutasMercado.Add('Morango');
    lListaFrutasMercado.Add('Banana');
    lListaFrutasMercado.Add('Abacaxi');
    lListaFrutasMercado.Add('Laranja');
    lListaFrutasMercado.Add('Melancia');

    lListaFrutasMercado.SaveToFile('C:\Arquivos_de_Trabalho\Projetos_Delphi\Curso_Delphi_Basico\Aula-17-String-List\Arquivos\lista_de_frutas_mercado_nova.txt');
    mmoLista.Text := lListaFrutasMercado.Text;

  finally
    lListaFrutasMercado.Free;
  end;

end;

end.
