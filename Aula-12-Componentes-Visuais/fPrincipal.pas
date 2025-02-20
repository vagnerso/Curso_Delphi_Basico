unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Movimentao1: TMenuItem;
    Relatrios1: TMenuItem;
    Fechar1: TMenuItem;
    Usurios1: TMenuItem;
    Classificaes1: TMenuItem;
    Produtos1: TMenuItem;
    Clientes1: TMenuItem;
    Venda1: TMenuItem;
    Compra1: TMenuItem;
    Relatriodeprodutos1: TMenuItem;
    Relatriodevendas1: TMenuItem;
    Categorias1: TMenuItem;
    Cores1: TMenuItem;
    Image1: TImage;
    procedure Produtos1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses fPesquisaProdutos;

procedure TfrmPrincipal.Fechar1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
  frmPesquisaProdutos.Showmodal;
end;

end.
