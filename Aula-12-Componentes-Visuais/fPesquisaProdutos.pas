unit fPesquisaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmPesquisaProdutos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edtPesquisar: TEdit;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaProdutos: TfrmPesquisaProdutos;

implementation

uses
  fCadastroProdutos;

{$R *.dfm}

procedure TfrmPesquisaProdutos.Button1Click(Sender: TObject);
begin
  frmCadastroProdutos.Showmodal;
end;

procedure TfrmPesquisaProdutos.Button2Click(Sender: TObject);
begin
  frmCadastroProdutos.Showmodal;
end;

end.
