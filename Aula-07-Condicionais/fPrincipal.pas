unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    pnlCampos: TPanel;
    mmoListaClientes: TMemo;
    Label1: TLabel;
    edtNome: TEdit;
    Label2: TLabel;
    edtEndereco: TEdit;
    rdgFisicaOuJuridica: TRadioGroup;
    cbxTipo: TComboBox;
    Label3: TLabel;
    pnlMenu: TPanel;
    Button1: TButton;
    Button2: TButton;
    mmoListaFornecedores: TMemo;
    mmoListaVendedores: TMemo;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  FisicaOuJuridica: String;
begin

  if Trim(edtNome.Text) = EmptyStr then
  begin
    ShowMessage('Aten��o, o campo "Nome" est� vazio!');
  end else if Trim(edtEndereco.Text) = EmptyStr then
  begin
    ShowMessage('Aten��o, o campo "Endere�o" est� vazio!');
  end
  else
  begin

    if rdgFisicaOuJuridica.ItemIndex = 0 then
      FisicaOuJuridica := 'F�sica'
    else
      FisicaOuJuridica := 'Jur�dica';

    case cbxTipo.ItemIndex of
      0: // Clientes
      begin
        mmoListaClientes.Lines.Add(
          edtNome.Text + ' | ' +
          edtEndereco.Text + ' | ' +
          FisicaOuJuridica
        );
      end;
      1: // Fornecedores
      begin
        mmoListaFornecedores.Lines.Add(
          edtNome.Text + ' | ' +
          edtEndereco.Text + ' | ' +
          FisicaOuJuridica
        );
      end;
      2: // Vendedores
      begin
        mmoListaVendedores.Lines.Add(
          edtNome.Text + ' | ' +
          edtEndereco.Text + ' | ' +
          FisicaOuJuridica
        );
      end;
    end;

  end;

end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
  edtNome.Text := EmptyStr;
  edtEndereco.Text := EmptyStr;

  cbxTipo.ItemIndex := 0;
  rdgFisicaOuJuridica.ItemIndex := 0;

end;

end.
