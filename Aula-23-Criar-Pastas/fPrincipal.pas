unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.ExtCtrls, Vcl.FileCtrl;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Button5: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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
begin

  CreateDir('c:\temp\arquivos\documentos');

end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin

  if DirectoryExists('c:\temp\arquivos\documentos') then
  begin
    ShowMessage('O diretório já existe');
  end
  else
  begin
    ShowMessage('O diretório não existe');
  end;

end;

procedure TfrmPrincipal.Button5Click(Sender: TObject);
begin

  ForceDirectories('c:\temp\arquivos\documentos');

end;

end.
