unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type RecordEndereco = Record
  Rua: String;
  Cidade: String;
End;

type RecordPessoa = Record
  Codigo  : Integer;
  Nome    : String;
  Credito : Currency;
  Ativo   : Boolean;
  Endereco: RecordEndereco;
End;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnPessoa: TButton;
    mmoPessoa: TMemo;
    procedure btnPessoaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnPessoaClick(Sender: TObject);
var
  lPessoa: RecordPessoa;
  lSituacao: String;
begin

  lPessoa.Codigo  := 1;
  lPessoa.Nome    := 'Vagner';
  lPessoa.Credito := 500;
  lPessoa.Ativo   := True;
  lPessoa.Endereco.Rua    := 'Rua das Laranjeiras';
  lPessoa.Endereco.Cidade := 'Camaquã';

  mmoPessoa.Lines.Clear;
  mmoPessoa.Lines.Add('Dados da pessoa');
  mmoPessoa.Lines.Add('---------------');
  mmoPessoa.Lines.Add('Código : ' + lPessoa.Codigo.ToString);
  mmoPessoa.Lines.Add('Nome : ' + lPessoa.Nome);
  mmoPessoa.Lines.Add('Crédito : ' + FormatCurr('#,##0.00',lPessoa.Credito));

  if lPessoa.Ativo  then
  begin
    lSituacao := 'Ativo';
  end
  else
  begin
    lSituacao := 'Inativo';
  end;

  mmoPessoa.Lines.Add('Situação : ' + lSituacao);
  mmoPessoa.Lines.Add('Rua : ' + lPessoa.Endereco.Rua);
  mmoPessoa.Lines.Add('Cidade : ' + lPessoa.Endereco.Cidade);

end;

end.
