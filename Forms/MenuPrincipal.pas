unit MenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, ufTarefa1, ufTarefa2, ufTarefa3;

type
  TfrmMenuPrincipal = class(TForm)
    mmPrincipal: TMainMenu;
    mTarefas: TMenuItem;
    miTarefa1: TMenuItem;
    miTarefa2: TMenuItem;
    miTarefa3: TMenuItem;
    procedure miTarefa1Click(Sender: TObject);
    procedure miTarefa2Click(Sender: TObject);
    procedure miTarefa3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuPrincipal: TfrmMenuPrincipal;

implementation

{$R *.dfm}

procedure TfrmMenuPrincipal.miTarefa1Click(Sender: TObject);
begin
  TfTarefa1.Create(Self);
end;

procedure TfrmMenuPrincipal.miTarefa2Click(Sender: TObject);
begin
  TfTarefa2.Create(Self);
end;

procedure TfrmMenuPrincipal.miTarefa3Click(Sender: TObject);
begin
  TfTarefa3.Create(Self);
end;

end.
