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
    pnlPower: TPanel;
    pnlStrToFloat: TPanel;
    pnlRandom: TPanel;
    pnlIntToStr: TPanel;
    pnlStrToInt: TPanel;
    pnlSqrt: TPanel;
    pnlFloatToStr: TPanel;
    Label1: TLabel;
    pnlFormatFloat: TPanel;
    edtResultado: TEdit;
    procedure pnlIntToStrClick(Sender: TObject);
    procedure pnlStrToIntClick(Sender: TObject);
    procedure pnlFloatToStrClick(Sender: TObject);
    procedure pnlStrToFloatClick(Sender: TObject);
    procedure pnlRandomClick(Sender: TObject);
    procedure pnlFormatFloatClick(Sender: TObject);
    procedure pnlPowerClick(Sender: TObject);
    procedure pnlSqrtClick(Sender: TObject);

  private

    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.pnlFloatToStrClick(Sender: TObject);
var
  lNumero: Double;
begin

  lNumero := 10.99;

  edtResultado.Text := FloatToStr(lNumero);


end;

procedure TfrmPrincipal.pnlFormatFloatClick(Sender: TObject);
var
  lNumero: Double;
begin

  lNumero := 10.97586;

  edtResultado.Text := FormatFloat('#,##0.00', lNumero);

end;

procedure TfrmPrincipal.pnlIntToStrClick(Sender: TObject);
var
  lNumero: Integer;
begin

  lNumero := 500;

  //edtResultado.Text := IntToStr(lNumero);

  edtResultado.Text := lNumero.ToString;

end;

procedure TfrmPrincipal.pnlPowerClick(Sender: TObject);
var
  lNumero: Integer;
begin

  lNumero := 4;

  edtResultado.Text := Power(lNumero, 3).ToString;

end;

procedure TfrmPrincipal.pnlRandomClick(Sender: TObject);
var
  lNumero: Integer;
begin

  //lNumero := Random(100);

  lNumero := RandomRange(100, 300);

  edtResultado.Text := lNumero.ToString;

end;

procedure TfrmPrincipal.pnlSqrtClick(Sender: TObject);
var
  lNumero: Integer;
begin

  lNumero := 9;

  edtResultado.Text := Sqrt(lNumero).ToString;

end;

procedure TfrmPrincipal.pnlStrToFloatClick(Sender: TObject);
var
  lNumero: Double;
begin

  lNumero := StrToFloatDef(edtResultado.Text, 0);

end;

procedure TfrmPrincipal.pnlStrToIntClick(Sender: TObject);
var
  lNumero: Integer;
begin

  lNumero := StrToIntDef(edtResultado.Text, 0);

end;

end.

