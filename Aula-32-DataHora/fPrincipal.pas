unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.ExtCtrls, Vcl.FileCtrl, Vcl.ExtDlgs, System.IOUtils, Vcl.Imaging.pngimage,
  Vcl.WinXPanels, StrUtils, Math, Vcl.WinXPickers, DateUtils;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    pnlObterDoCampo: TPanel;
    pnlDecode: TPanel;
    pnlEncode: TPanel;
    pnlObterDataHora: TPanel;
    pnlFormatar: TPanel;
    pnlExtrairDaData: TPanel;
    Label2: TLabel;
    mmoListaDataHoras: TMemo;
    Label1: TLabel;
    DatePicker1: TDatePicker;
    pnlDiferencaEntreDatas: TPanel;
    pnlIncrementar: TPanel;
    pnlSubtrairSomar: TPanel;
    procedure pnlFormatarClick(Sender: TObject);
    procedure pnlObterDataHoraClick(Sender: TObject);
    procedure pnlObterDoCampoClick(Sender: TObject);
    procedure pnlEncodeClick(Sender: TObject);
    procedure pnlDecodeClick(Sender: TObject);
    procedure pnlExtrairDaDataClick(Sender: TObject);
    procedure pnlDiferencaEntreDatasClick(Sender: TObject);
    procedure pnlIncrementarClick(Sender: TObject);
    procedure pnlSubtrairSomarClick(Sender: TObject);

  private

    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.pnlDecodeClick(Sender: TObject);
var
  lAno, lMes, lDia, lHora, lMinuto, lSegundo, lMilesimos: Word;
  lDataHoraEncode: TDateTime;
begin

  lDataHoraEncode := Now;

  DecodeDateTime(lDataHoraEncode,
  lAno, lMes, lDia, lHora, lMinuto, lSegundo, lMilesimos);

  mmoListaDataHoras.Lines.Add('Ano: ' + lAno.ToString);
  mmoListaDataHoras.Lines.Add('Mês: ' + lMes.ToString);
  mmoListaDataHoras.Lines.Add('Dia: ' + lDia.ToString);
  mmoListaDataHoras.Lines.Add('Hora: ' + lHora.ToString);
  mmoListaDataHoras.Lines.Add('Minuto: ' + lMinuto.ToString);
  mmoListaDataHoras.Lines.Add('Segundo: ' + lSegundo.ToString);
  mmoListaDataHoras.Lines.Add('Milésimos de segundo: ' + lMilesimos.ToString);

  mmoListaDataHoras.Lines.Add(lAno.ToString+lHora.ToString+lMilesimos.ToString);

end;

procedure TfrmPrincipal.pnlDiferencaEntreDatasClick(Sender: TObject);
begin

  mmoListaDataHoras.Lines.Add(
    DaysBetween(Now, DatePicker1.Date).ToString
  );

end;

procedure TfrmPrincipal.pnlEncodeClick(Sender: TObject);
var
  lAno, lMes, lDia, lHora, lMinuto, lSegundo, lMilesimos: Word;
  lDataHoraEncode: TDateTime;
begin

  lAno := 2028;
  lMes := 06;
  lDia := 10;
  lHora := 14;
  lMinuto:= 15;
  lSegundo := 52;
  lMilesimos := 123;

  lDataHoraEncode := EncodeDateTime(lAno, lMes, lDia, lHora, lMinuto, lSegundo, lMilesimos);

  mmoListaDataHoras.Lines.Add(FormatDateTime('dd/MM/yyyy HH:mm:ss:zzz', lDataHoraEncode));

end;

procedure TfrmPrincipal.pnlExtrairDaDataClick(Sender: TObject);
var
  lData: TDate;
begin

  lData := Date;

  mmoListaDataHoras.Lines.Add('Dia da semana: ' + DayOfWeek(lData).ToString);
  mmoListaDataHoras.Lines.Add('Dia do mês: ' + DayOfTheMonth(lData).ToString);
  mmoListaDataHoras.Lines.Add('Dia do ano: ' + DayOfTheYear(lData).ToString);

end;

procedure TfrmPrincipal.pnlFormatarClick(Sender: TObject);
var
  lDataHoraAtual: TDateTime;
begin

  lDataHoraAtual := Now;

  mmoListaDataHoras.Lines.Clear;

  mmoListaDataHoras.Lines.Add('== Data/Horas ==');

  mmoListaDataHoras.Lines.Add('dd/MM: ' + FormatDateTime('dd/MM', lDataHoraAtual));
  mmoListaDataHoras.Lines.Add('t: ' + FormatDateTime('t', lDataHoraAtual));
  mmoListaDataHoras.Lines.Add('tt: ' + FormatDateTime('tt', lDataHoraAtual));

  mmoListaDataHoras.Lines.Add('dd/MM/yyyy: ' + FormatDateTime('dd/MM/yyyy', lDataHoraAtual));
  mmoListaDataHoras.Lines.Add('MM/dd/yyyy: ' + FormatDateTime('MM/dd/yyyy', lDataHoraAtual));
  mmoListaDataHoras.Lines.Add('dd ddd/MMM/yyyy: ' + FormatDateTime('dd ddd/MMM/yyyy', lDataHoraAtual));
  mmoListaDataHoras.Lines.Add('dd dddd/MMMM/yyyy: ' + FormatDateTime('dd dddd/MMMD/yyyy', lDataHoraAtual));
  mmoListaDataHoras.Lines.Add('dddd dd/MMM/yyyy: ' + FormatDateTime('dddd dd/MMM/yyyy', lDataHoraAtual));
  mmoListaDataHoras.Lines.Add('dd de MMMM de yyyy: ' + FormatDateTime(' dd "de" MMMM "de" yyyy', lDataHoraAtual));

  mmoListaDataHoras.Lines.Add('dd/MM/yyyy HH:mm:ss:zzz: ' + FormatDateTime('dd/MM/yyyy HH:mm:ss:zzz', lDataHoraAtual));
  mmoListaDataHoras.Lines.Add('dd/MM/yyyy HH:mm:ss: ' + FormatDateTime('dd/MM/yyyy HH:mm:ss', lDataHoraAtual));

  mmoListaDataHoras.Lines.Add('== Dia ==');
  mmoListaDataHoras.Lines.Add('dddd: ' + FormatDateTime('dddd', lDataHoraAtual));
  mmoListaDataHoras.Lines.Add('ddd: '+ FormatDateTime('ddd', lDataHoraAtual));
  mmoListaDataHoras.Lines.Add('dd: ' + FormatDateTime('dd', lDataHoraAtual));
  mmoListaDataHoras.Lines.Add('d: ' + FormatDateTime('d', lDataHoraAtual));

  mmoListaDataHoras.Lines.Add('== Mês ==');

  mmoListaDataHoras.Lines.Add('MMMM: ' + FormatDateTime('MMMM', lDataHoraAtual));
  mmoListaDataHoras.Lines.Add('MMM: ' + FormatDateTime('MMM', lDataHoraAtual));
  mmoListaDataHoras.Lines.Add('MM: ' + FormatDateTime('MM', lDataHoraAtual));
  mmoListaDataHoras.Lines.Add('M: ' + FormatDateTime('M', lDataHoraAtual));

  mmoListaDataHoras.Lines.Add('== Ano ==');
  mmoListaDataHoras.Lines.Add('yyyy: ' + FormatDateTime('yyyy', lDataHoraAtual));
  mmoListaDataHoras.Lines.Add('yy: ' + FormatDateTime('yy', lDataHoraAtual));
  mmoListaDataHoras.Lines.Add('y: ' + FormatDateTime('y', lDataHoraAtual));

  mmoListaDataHoras.Lines.Add('== Horas ==');
  mmoListaDataHoras.Lines.Add('hh: ' + FormatDateTime('hh', lDataHoraAtual));
  mmoListaDataHoras.Lines.Add('HH: ' + FormatDateTime('HH', lDataHoraAtual));
  mmoListaDataHoras.Lines.Add('== Minutos ==');
  mmoListaDataHoras.Lines.Add('mm: ' + FormatDateTime('mm', lDataHoraAtual));
  mmoListaDataHoras.Lines.Add('== Segundos ==');
  mmoListaDataHoras.Lines.Add('ss: ' + FormatDateTime('ss', lDataHoraAtual));

  mmoListaDataHoras.Lines.Add('== Milésimos de segundo ==');

  mmoListaDataHoras.Lines.Add('z: ' + FormatDateTime('z', lDataHoraAtual));
  mmoListaDataHoras.Lines.Add('zzz: ' + FormatDateTime('zzz', lDataHoraAtual));

end;

procedure TfrmPrincipal.pnlIncrementarClick(Sender: TObject);
var
  lDataHora : TDateTime;
begin

  lDataHora := Now;

  mmoListaDataHoras.Lines.Clear;
  mmoListaDataHoras.Lines.Add('Data hora atual: ' + DateTimeToStr(lDataHora));
  mmoListaDataHoras.Lines.Add('Incrementando dia: ' + DateTimeToStr(IncDay(lDataHora)));
  mmoListaDataHoras.Lines.Add('Incrementando 2 dias: ' + DateTimeToStr(IncDay(lDataHora, 2)));
  mmoListaDataHoras.Lines.Add('Decrementar -2 dias: ' + DateTimeToStr(IncDay(lDataHora, -2)));
  mmoListaDataHoras.Lines.Add('Incrementando mês: ' + DateTimeToStr(IncMonth(lDataHora)));
  mmoListaDataHoras.Lines.Add('Incrementando ano: ' + DateTimeToStr(IncYear(lDataHora)));
  mmoListaDataHoras.Lines.Add('Decrementar - 5 anos: ' + DateTimeToStr(IncYear(lDataHora, -5)));


end;

procedure TfrmPrincipal.pnlObterDataHoraClick(Sender: TObject);
var
  lData: TDate;
  lHora: TTime;
  lDataHora: TDateTime;
begin

  lData := Date;
  lHora := Time;
  lDataHora := Now;

  mmoListaDataHoras.Lines.Clear;
  mmoListaDataHoras.Lines.Add(DateToStr(lData));
  mmoListaDataHoras.Lines.Add(TimeToStr(lHora));
  mmoListaDataHoras.Lines.Add(DateTimeToStr(lDataHora));



end;

procedure TfrmPrincipal.pnlObterDoCampoClick(Sender: TObject);

begin

  mmoListaDataHoras.Lines.Add(
    FormatDateTime(' dd "de" MMMM "de" yyyy', DatePicker1.Date)
    );

end;

procedure TfrmPrincipal.pnlSubtrairSomarClick(Sender: TObject);
var
  lDataHora : TDateTime;
begin

  lDataHora := Now;

  mmoListaDataHoras.Lines.Add('Data hora atual: '+ DateTimeToStr(lDataHora));
  mmoListaDataHoras.Lines.Add('Data hora atual - 30 dias: '+ DateTimeToStr(lDataHora-30));
  mmoListaDataHoras.Lines.Add('Data hora atual - 50 dias: '+ DateTimeToStr(lDataHora-50));
  mmoListaDataHoras.Lines.Add('Data hora atual + 50 dias: '+ DateTimeToStr(lDataHora+50));
  mmoListaDataHoras.Lines.Add('Data hora atual + 90 dias: '+ DateTimeToStr(lDataHora+90));
end;

end.

