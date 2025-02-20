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
    edtOrigem: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtDestino: TEdit;
    imgBotaoCaminho: TImage;
    imgBotaoCaminhoCopia: TImage;
    Button1: TButton;
    FileOpenDialog1: TFileOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure imgBotaoCaminhoClick(Sender: TObject);
    procedure imgBotaoCaminhoCopiaClick(Sender: TObject);
    procedure btnApagarPastaVaziaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);

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

    TFile.Copy(edtOrigem.Text, edtDestino.Text, True);
    ShowMessage('Arquivo copiado com sucesso!');

  except on E: Exception do
    ShowMessage('Erro ao tentar copiar arquivo' + sLineBreak +
    E.Message);
  end;

end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  lOrigem, lDestino, lNomeArquivo: String;
begin

  FileOpenDialog1.Options := [];

  if FileOpenDialog1.Execute then
  begin

    lOrigem := FileOpenDialog1.FileName;
    lNomeArquivo := ExtractFileName(lOrigem);

    SaveDialog1.FileName := lNomeArquivo;
    SaveDialog1.InitialDir := ExtractFilePath(lOrigem);

    if SaveDialog1.Execute then
    begin

      lDestino := SaveDialog1.FileName;

      try

        TFile.Copy(lOrigem, lDestino, True);
        ShowMessage('Arquivo copiado com sucesso!');

      except on E: Exception do
        ShowMessage('Erro ao tentar copiar o arquivo!');
      end;

    end;

  end;

end;

procedure TfrmPrincipal.imgBotaoCaminhoClick(Sender: TObject);
begin

  FileOpenDialog1.Options := [];
  if FileOpenDialog1.Execute then
  begin
    edtOrigem.Text := FileOpenDialog1.FileName;
  end;

end;

procedure TfrmPrincipal.imgBotaoCaminhoCopiaClick(Sender: TObject);
begin

  FileOpenDialog1.Options := [fdoPickFolders];
  if FileOpenDialog1.Execute then
  begin
    edtDestino.Text := FileOpenDialog1.FileName;
  end;

end;

end.

