unit dPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdtmPrincipal = class(TDataModule)
    memTarefas: TFDMemTable;
    memTarefasData: TDateTimeField;
    memTarefasSituacao: TSmallintField;
    memTarefasTempoEstimado: TTimeField;
    memTarefasDescricao: TStringField;
    memTarefasId: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure memTarefasBeforePost(DataSet: TDataSet);
    procedure memTarefasSituacaoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
    FId: Integer;
  public
    { Public declarations }
  end;

var
  dtmPrincipal: TdtmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdtmPrincipal.DataModuleCreate(Sender: TObject);
begin
  FId := 0;
end;

procedure TdtmPrincipal.memTarefasBeforePost(DataSet: TDataSet);
begin

  if memTarefas.State = dsInsert then
  begin
    Inc(FId);
    memTarefasId.AsInteger := FId;
  end;

end;

procedure TdtmPrincipal.memTarefasSituacaoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin

  if memTarefas.IsEmpty then
  begin
    Exit;
  end;

  case Sender.AsInteger of
    0: Text := 'Pendente';
    1: Text := 'Realizada';
  end;

end;

end.
