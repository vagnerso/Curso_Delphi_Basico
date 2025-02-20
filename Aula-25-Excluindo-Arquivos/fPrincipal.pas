unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.ExtCtrls, Vcl.FileCtrl, Vcl.ExtDlgs;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    FileOpenDialog1: TFileOpenDialog;
    btnApagarArquivo: TButton;
    procedure btnApagarArquivoClick(Sender: TObject);
  private

    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnApagarArquivoClick(Sender: TObject);
var
  lFile: String;
begin

  lFile := 'D:\temp\documentos\imagem1.bmp';

  if FileExists(lFile) then
  begin

    if DeleteFile(lFile) then
    begin
      ShowMessage('Arquivo excluido com sucesso!' + lFile);
    end
    else
    begin
      ShowMessage('Falha ao tentar excluir o arquivo: ' + lFile);
    end;

  end
  else
  begin
    ShowMessage('Arquivo não encontrado: ' + lFile);
  end;

end;

end.
