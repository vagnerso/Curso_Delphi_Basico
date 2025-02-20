unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnTimer: TButton;
    btnTabelaMemoria: TButton;
    tmrMensagem: TTimer;
    Button1: TButton;
    memLista: TFDMemTable;
    memListaCodigo: TIntegerField;
    memListaNome: TStringField;
    grdLista: TDBGrid;
    dtsLista: TDataSource;
    procedure Timer1Timer(Sender: TObject);
    procedure tmrMensagemTimer(Sender: TObject);
    procedure btnTimerClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnTabelaMemoriaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnTabelaMemoriaClick(Sender: TObject);
var
  i: integer;
begin

  memLista.Open;
  memLista.EmptyDataSet;

  for I := 1 to 500 do
  begin

    memLista.Append;
    memListaCodigo.AsInteger := i;
    memListaNome.AsString := 'Nome ' + i.ToString;
    memLista.Post;

  end;

end;

procedure TfrmPrincipal.btnTimerClick(Sender: TObject);
begin
  tmrMensagem.Enabled := True;
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  tmrMensagem.Enabled := False;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  tmrMensagem.Enabled := False;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
   ShowMessage('Mensagem teste a cada 5 segundos')
end;

procedure TfrmPrincipal.tmrMensagemTimer(Sender: TObject);
begin
  ShowMessage('Mensagem a cada 3 segundos...');
end;

end.
