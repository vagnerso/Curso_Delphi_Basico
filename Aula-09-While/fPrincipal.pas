unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
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

procedure TForm1.Button1Click(Sender: TObject);
var
  lContador: Integer;
begin

  lContador := 1;

  while lContador <= 10 do
  begin
    lContador := lContador + 1;

    if lContador = 5 then
    begin
      Exit;
    end;

  end;

  ShowMessage('O contador est� em: ' +  lContador.ToString);

  ShowMessage('O contador est� em: ' +  lContador.ToString);

  ShowMessage('O contador est� em: ' +  lContador.ToString);

end;

end.
