unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.ExtCtrls, Vcl.FileCtrl, Vcl.ExtDlgs, System.IOUtils, Vcl.Imaging.pngimage,
  Vcl.WinXPanels, StrUtils, Math;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    pnlCeil: TPanel;
    pnlRoundTo: TPanel;
    pnlRound: TPanel;
    pnlTrunc: TPanel;
    pnlFloor: TPanel;
    Label1: TLabel;
    pnlSimpleRoundTo: TPanel;
    edtValorArredondado: TEdit;
    edtValor: TEdit;
    Label2: TLabel;
    procedure pnlTruncClick(Sender: TObject);
    procedure pnlFloorClick(Sender: TObject);
    procedure pnlCeilClick(Sender: TObject);
    procedure pnlRoundClick(Sender: TObject);
    procedure pnlRoundToClick(Sender: TObject);
    procedure pnlSimpleRoundToClick(Sender: TObject);

  private

    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.pnlCeilClick(Sender: TObject);
var
  lValor: Currency;
  lResultado: Integer;
begin

  lValor := StrToFloatDef(edtValor.Text, 0);
  lResultado := Ceil(lValor);
  edtValorArredondado.Text := lResultado.ToString;

end;

procedure TfrmPrincipal.pnlFloorClick(Sender: TObject);
var
  lValor: Currency;
  lResultado: Integer;
begin

  lValor := StrToFloatDef(edtValor.Text, 0);
  lResultado := Floor(lValor);
  edtValorArredondado.Text := lResultado.ToString;

end;

procedure TfrmPrincipal.pnlRoundClick(Sender: TObject);
var
  lValor: Currency;
  lResultado: Currency;
begin

  lValor := StrToFloatDef(edtValor.Text, 0);
  lResultado := Round(lValor);
  edtValorArredondado.Text := FloatToStr(lResultado);

end;

procedure TfrmPrincipal.pnlRoundToClick(Sender: TObject);
var
  lValor: Currency;
  lResultado: Currency;
begin

  lValor := StrToFloatDef(edtValor.Text, 0);
  lResultado := RoundTo(lValor, -2);
  edtValorArredondado.Text := FloatToStr(lResultado);

end;

procedure TfrmPrincipal.pnlSimpleRoundToClick(Sender: TObject);
var
  lValor: Currency;
  lResultado: Currency;
begin

  lValor := StrToFloatDef(edtValor.Text, 0);
  lResultado := SimpleRoundTo(lValor, -2);
  edtValorArredondado.Text := FloatToStr(lResultado);

end;

procedure TfrmPrincipal.pnlTruncClick(Sender: TObject);
var
  lValor: Currency;
  lResultado: Integer;
begin

  lValor := StrToFloatDef(edtValor.Text, 0);
  lResultado := Trunc(lValor);
  edtValorArredondado.Text := lResultado.ToString;

end;

end.

