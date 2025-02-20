unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    edtNumero1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtNumero2: TEdit;
    Label3: TLabel;
    edtResultado: TEdit;
    btnSomar: TButton;
    lblMensagem: TLabel;
    Button1: TButton;
    procedure btnSomarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnSomarClick(Sender: TObject);
begin

  try

    edtResultado.Text :=
    IntToStr(
      StrToInt(edtNumero1.Text) +
      StrToInt(edtNumero2.Text)
    );

  finally
    lblMensagem.Caption := 'Foi realizada a tentativa de c�lculo';
  end;

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  query: TFDQuery;
begin

  query := TFDQuery.Create(nil);
  try

    query.Close;
    query.SQL.Clear;
    query.SQL.Add('select * from tabela');
    query.Open;

  finally
    query.Free;
  end;

end;

end.
