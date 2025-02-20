unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.ExtCtrls, Vcl.FileCtrl, Vcl.ExtDlgs, System.IOUtils;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnApagarPastaVazia: TButton;
    btnApagarPastaComArquivos: TButton;
    edtCaminho: TEdit;
    Label1: TLabel;
    procedure btnApagarPastaVaziaClick(Sender: TObject);
    procedure btnApagarPastaComArquivosClick(Sender: TObject);
  private

    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnApagarPastaComArquivosClick(Sender: TObject);
begin

  if TDirectory.Exists(edtCaminho.Text) then
  begin

    // excluir a pasta
    try

      TDirectory.Delete(edtCaminho.Text, True);
      ShowMessage('Pasta excluida com sucesso!');

    except on E: Exception do
      ShowMessage('Erro ao tentar excluir a pasta: ' + sLineBreak +
                 E.Message);
    end;

  end
  else
  begin
    ShowMessage('Pasta não encontrada, por gentileza conferir e tentar novamente.')
  end;

end;

procedure TfrmPrincipal.btnApagarPastaVaziaClick(Sender: TObject);
begin

  if TDirectory.Exists(edtCaminho.Text) then
  begin

    // excluir a pasta
    try

      TDirectory.Delete(edtCaminho.Text);
      ShowMessage('Pasta excluida com sucesso!');

    except on E: Exception do
      ShowMessage('Erro ao tentar excluir a pasta: ' + sLineBreak +
                 E.Message);
    end;

  end
  else
  begin
    ShowMessage('Pasta não encontrada, por gentileza conferir e tentar novamente.')
  end;

end;

end.

//System.IOUtils
