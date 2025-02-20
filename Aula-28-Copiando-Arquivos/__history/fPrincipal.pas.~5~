unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.ExtCtrls, Vcl.FileCtrl, Vcl.ExtDlgs, System.IOUtils, Vcl.Imaging.pngimage;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnApagarPastaVazia: TButton;
    edtCaminho: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtCaminhoCopia: TEdit;
    imgBotaoCaminho: TImage;
    imgBotaoCaminhoCopia: TImage;
    FileOpenDialog1: TFileOpenDialog;
    procedure imgBotaoCaminhoClick(Sender: TObject);
    procedure imgBotaoCaminhoCopiaClick(Sender: TObject);
    procedure btnApagarPastaVaziaClick(Sender: TObject);

  private

    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnApagarPastaVaziaClick(Sender: TObject);
begin

  try
    TDirectory.Copy(edtCaminho.Text,
                    edtCaminhoCopia.Text);
    ShowMessage('Pasta copiada com sucesso para o caminho: '+
               sLineBreak + edtCaminhoCopia.Text);
  except on E: Exception do
    ShowMessage('Erro ao tentar copiar a pasta.' + sLineBreak +
               E.Message);
  end;

end;

procedure TfrmPrincipal.imgBotaoCaminhoClick(Sender: TObject);
begin

  if FileOpenDialog1.Execute then
  begin
    edtCaminho.Text := FileOpenDialog1.FileName;
  end;

end;

procedure TfrmPrincipal.imgBotaoCaminhoCopiaClick(Sender: TObject);
begin

  if FileOpenDialog1.Execute then
  begin
    edtCaminhoCopia.Text := FileOpenDialog1.FileName;
  end;

end;

end.

