program Aula12ComponentesVisuais;

uses
  Vcl.Forms,
  fPrincipal in 'fPrincipal.pas' {frmPrincipal},
  fPesquisaProdutos in 'fPesquisaProdutos.pas' {frmPesquisaProdutos},
  fCadastroProdutos in 'fCadastroProdutos.pas' {frmCadastroProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmPesquisaProdutos, frmPesquisaProdutos);
  Application.CreateForm(TfrmCadastroProdutos, frmCadastroProdutos);
  Application.Run;
end.
