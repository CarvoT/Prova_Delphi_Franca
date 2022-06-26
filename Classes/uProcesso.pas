unit uProcesso;

interface

uses
  Classes;

type
  eProcesso = (epPrimeiro = 1, epSegundo = 2);

  iObservador = interface
    procedure AtualizarProcesso(AChaveProcesso: eProcesso; AValor: Integer);
  end;

  TProcessoThread = Class(TThread)
  private
    FIntervalo: Integer;
    FObservador: iObservador;
    FChaveProcesso: eProcesso;
  protected
    procedure Execute; Override;
  public
    constructor Create(AObservador: iObservador; AChaveProcesso: eProcesso);
    destructor Destroy; override;

    procedure DefinirTempo(AMilissegundos: Integer);
  end;

implementation


{ TProcessoThread }

constructor TProcessoThread.Create(AObservador: iObservador; AChaveProcesso: eProcesso);
begin
  inherited Create(True);
  FreeOnTerminate := True;
  FObservador := AObservador;
  FChaveProcesso := AChaveProcesso;
end;

procedure TProcessoThread.DefinirTempo(AMilissegundos: Integer);
begin
  FIntervalo := AMilissegundos;
end;

destructor TProcessoThread.Destroy;
begin
  inherited Destroy;
end;

procedure TProcessoThread.Execute;
var
  iPos: Integer;
begin
  inherited;

  for iPos := 0 to 100 do
  begin
    if Terminated then
      Break;

    Sleep(FIntervalo);
    FObservador.AtualizarProcesso(FChaveProcesso, iPos);
  end;

end;

end.
