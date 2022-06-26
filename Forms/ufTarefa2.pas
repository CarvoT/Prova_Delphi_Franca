unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uProcesso, Vcl.StdCtrls,
  Vcl.Samples.Spin, Vcl.ComCtrls;

type


  TfTarefa2 = class(TForm, iObservador)
    pbProcesso1: TProgressBar;
    pbProcesso2: TProgressBar;
    btnIniciar: TButton;
    gbIntervalos: TGroupBox;
    lblTempoThread2: TLabel;
    lblTempoThread1: TLabel;
    seProcesso1: TSpinEdit;
    seProcesso2: TSpinEdit;
    lblProgresso2: TLabel;
    lblProgresso1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIniciarClick(Sender: TObject);
  private
    { Private declarations }
    Thread1: TProcessoThread;
    Thread2: TProcessoThread;

    procedure AtualizarProcesso(AChaveProcesso: eProcesso; AValor: Integer);

    procedure IniciarThreads;
    procedure PararThreads;
  public
    { Public declarations }

  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

procedure TfTarefa2.AtualizarProcesso(AChaveProcesso: eProcesso; AValor: Integer);
begin
  case AChaveProcesso of
    epPrimeiro: pbProcesso1.Position := AValor;
    epSegundo: pbProcesso2.Position := AValor;
  end;
  Application.ProcessMessages;
end;

procedure TfTarefa2.btnIniciarClick(Sender: TObject);
begin
  PararThreads;
  IniciarThreads;
end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  PararThreads;
  Destroy;
end;

procedure TfTarefa2.IniciarThreads;
begin
  Thread1 := TprocessoThread.Create(Self, epPrimeiro);
  Thread2 := TprocessoThread.Create(Self, epSegundo);

  Thread1.DefinirTempo(seProcesso1.Value);
  Thread2.DefinirTempo(seProcesso2.Value);

  Thread1.Start;
  Thread2.Start;
end;

procedure TfTarefa2.PararThreads;
begin
  if Assigned(Thread1) then
  begin
    Thread1.Terminate;
  end;
  if Assigned(Thread2) then
  begin
    Thread2.Terminate;
  end;
end;

end.
