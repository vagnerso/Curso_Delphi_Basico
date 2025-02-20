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
    Button1: TButton;
    Button5: TButton;
    FileOpenDialog1: TFileOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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
  lSelectDir: string;
begin

  if SelectDirectory('Selecionar uma pasta',
                     'c:\temp',
                     lSelectDir) then
  begin
    ShowMessage('A pasta selecionada foi esta: ' +
                lSelectDir);
  end
  else
  begin
    ShowMessage('A seleção foi cancelada!');
  end;

end;

procedure TfrmPrincipal.Button5Click(Sender: TObject);
begin

  if FileOpenDialog1.Execute then
  begin
    ShowMessage('A pasta selecionada é esta: ' +
                FileOpenDialog1.FileName);
  end;

end;

end.
