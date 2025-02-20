unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnLimparTexto: TButton;
    mmoTexto: TMemo;
    Label1: TLabel;
    btnOpcoes: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnLimparTextoClick(Sender: TObject);
    procedure btnOpcoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnLimparTextoClick(Sender: TObject);
begin


  if MessageDlg('Deseja realmente limpar o texto?',
                TMsgDlgType.mtConfirmation,
                [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo],
                0,
                mbNo,
                ['Sim, desejo excluir!','Não desejo excluir!']) = mrYes then
  begin
    mmoTexto.Lines.Clear;
  end;

end;

procedure TfrmPrincipal.btnOpcoesClick(Sender: TObject);
begin


   case MessageDlg('Qual ação deseja realizar?',
   TMsgDlgType.mtError,
   [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo, TMsgDlgBtn.mbRetry],
   0,
   TMsgDlgBtn.mbRetry,
   ['Apagar o texto.', 'Pintar o texto de vermelho', 'Pintar de verde'])
   of
     mrYes :
       begin
         mmoTexto.Lines.Clear;
       end;
     mrNo:
       begin
         mmoTexto.Font.Color := clRed;
       end;
     mrRetry:
       begin
         mmoTexto.Color := clGreen;
       end;
   end;

end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  mmoTexto.Lines.Clear;
end;

end.
