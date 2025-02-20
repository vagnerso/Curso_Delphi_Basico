program ListaTarefas;

uses
  Vcl.Forms,
  fPrincipal in 'fPrincipal.pas' {frmPrincipal},
  dPrincipal in 'dPrincipal.pas' {dtmPrincipal: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdtmPrincipal, dtmPrincipal);
  Application.Run;
end.
