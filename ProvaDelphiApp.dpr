program ProvaDelphiApp;

uses
  Vcl.Forms,
  MenuPrincipal in 'Forms\MenuPrincipal.pas' {frmMenuPrincipal},
  ufTarefa1 in 'Forms\ufTarefa1.pas' {fTarefa1},
  ufTarefa2 in 'Forms\ufTarefa2.pas' {fTarefa2},
  ufTarefa3 in 'Forms\ufTarefa3.pas' {fTarefa3},
  uProcesso in 'Classes\uProcesso.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  Application.Run;
end.

