unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    btnTeste: TButton;
    procedure btnTesteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnTesteClick(Sender: TObject);
var
  lContador: Integer;
begin

  lContador := 0;

  repeat

    Inc(lContador);
    ShowMessage('O valor do contador: ' + lContador.ToString);

  until (lContador > 10);

end;

end.
