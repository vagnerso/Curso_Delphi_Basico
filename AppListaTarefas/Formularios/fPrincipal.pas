unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.WinXPickers, Vcl.WinXCalendars,
  Vcl.Imaging.pngimage;

type TOperacao = (opIncluir, opEditar);

type
  TfrmPrincipal = class(TForm)
    pnlTitulo: TPanel;
    pnlMenuAcoes: TPanel;
    pnlInformacoes: TPanel;
    pnlRodape: TPanel;
    grdTarefas: TDBGrid;
    pnlDescricaoTarefa: TPanel;
    imgBotaoIncluir: TImage;
    imgBotaoExcluir: TImage;
    imgBotaoFechar: TImage;
    imgLogoSistema: TImage;
    clpData: TCalendarPicker;
    Label1: TLabel;
    rdgSituacao: TRadioGroup;
    tmpTempoEstimado: TTimePicker;
    Label2: TLabel;
    mmoDescricao: TMemo;
    Label3: TLabel;
    pnlMenuSalvar: TPanel;
    imgBotaoSalvar: TImage;
    imgBotaoCancelar: TImage;
    Label4: TLabel;
    DBMemoDescricao: TDBMemo;
    dtsTarefas: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure imgBotaoIncluirClick(Sender: TObject);
    procedure grdTarefasDblClick(Sender: TObject);
    procedure imgBotaoSalvarClick(Sender: TObject);
    procedure imgBotaoCancelarClick(Sender: TObject);
    procedure imgBotaoExcluirClick(Sender: TObject);
    procedure imgBotaoFecharClick(Sender: TObject);
  private
    { Private declarations }
    FOperacao: TOperacao;

    procedure ModoConsulta;
    procedure ModoCadastro;
    procedure LimparCampos;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses dPrincipal;

{ TfrmPrincipal }


{ TfrmPrincipal }

{ TfrmPrincipal }

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  dtmPrincipal.memTarefas.CreateDataSet;
  ModoConsulta;
end;

procedure TfrmPrincipal.grdTarefasDblClick(Sender: TObject);
begin
  FOperacao := opEditar;
  clpData.Date :=
                  dtmPrincipal.memTarefasData.AsDateTime;
  rdgSituacao.ItemIndex :=
                  dtmPrincipal.memTarefasSituacao.AsInteger;
  tmpTempoEstimado.Time :=
                  dtmPrincipal.memTarefasTempoEstimado.AsDateTime;
  mmoDescricao.Text :=
                  dtmPrincipal.memTarefasDescricao.AsString;

  ModoCadastro;
end;

procedure TfrmPrincipal.imgBotaoCancelarClick(Sender: TObject);
begin
  dtmPrincipal.memTarefas.Cancel;
  ModoConsulta;

end;

procedure TfrmPrincipal.imgBotaoExcluirClick(Sender: TObject);
begin

  if MessageDlg('Deseja realmente excluir esta tarefa?',
                TMsgDlgType.mtWarning,
                [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo],
                0,
                TMsgDlgBtn.mbNo,
                ['Sim','N�o']
                ) = mrYes then
  begin
    dtmPrincipal.memTarefas.Delete;
  end;

end;

procedure TfrmPrincipal.imgBotaoFecharClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente fechar o sistema?',
                TMsgDlgType.mtWarning,
                [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo],
                0,
                TMsgDlgBtn.mbNo,
                ['Sim','N�o']
                ) = mrYes then
  begin
    Application.Terminate;
  end;
end;

procedure TfrmPrincipal.imgBotaoIncluirClick(Sender: TObject);
begin
  FOperacao := opIncluir;
  LimparCampos;
  ModoCadastro;
end;

procedure TfrmPrincipal.imgBotaoSalvarClick(Sender: TObject);
begin

  if Trim(mmoDescricao.Text) = '' then
  begin
    raise Exception.Create('Erro! O campo descri��o � de preenchimento obrigat�rio.');
  end;

  try

    case FOperacao of
      opIncluir: dtmPrincipal.memTarefas.Insert;
      opEditar: dtmPrincipal.memTarefas.Edit;
    end;

    dtmPrincipal.memTarefasData.AsDateTime := clpData.Date;
    dtmPrincipal.memTarefasSituacao.AsInteger := rdgSituacao.ItemIndex;
    dtmPrincipal.memTarefasTempoEstimado.AsDateTime := tmpTempoEstimado.Time;
    dtmPrincipal.memTarefasDescricao.AsString := mmoDescricao.Text;

    dtmPrincipal.memTarefas.Post;

    ModoConsulta;

  except on E: Exception do
  begin
    dtmPrincipal.memTarefas.Cancel;
    ShowMessage('Erro ao tentar salvar a tarefa!' + sLineBreak +
                E.Message);
  end;
  end;


end;

procedure TfrmPrincipal.LimparCampos;
begin
  clpData.Date := Now;
  rdgSituacao.ItemIndex := 0;
  tmpTempoEstimado.Time := StrToTime('01:00');
  mmoDescricao.Lines.Clear;
end;

procedure TfrmPrincipal.ModoCadastro;
begin
  pnlMenuAcoes.Visible := False;
  pnlInformacoes.Visible := True;
end;

procedure TfrmPrincipal.ModoConsulta;
begin
  pnlMenuAcoes.Visible := True;
  pnlInformacoes.Visible := False;
end;

end.
