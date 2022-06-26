unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient;

type
  TfTarefa3 = class(TForm)
    dgProjetos: TDBGrid;
    edtTotal: TEdit;
    btnObterTotal: TButton;
    btnObterTotalDiv: TButton;
    EdtTotalDiv: TEdit;
    lblTotal: TLabel;
    lblTotalDiv: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnObterTotalClick(Sender: TObject);
    procedure btnObterTotalDivClick(Sender: TObject);
  private
    { Private declarations }
    cdsProjetos: TclientDataSet;
    dsProjetos: TDataSource;

    procedure CriarComponentes;
    procedure PopularProjetos;
    procedure LiberarComponentes;

    procedure ObterTotal;
    procedure ObterTotalDivisoes;
  public
    { Public declarations }
  end;

var
  fTarefa3: TfTarefa3;

implementation

{$R *.dfm}

procedure TfTarefa3.btnObterTotalClick(Sender: TObject);
begin
  ObterTotal;
end;

procedure TfTarefa3.btnObterTotalDivClick(Sender: TObject);
begin
  ObterTotalDivisoes;
end;

procedure TfTarefa3.CriarComponentes;
begin
  cdsProjetos := TClientDataSet.Create(Self);
  dsProjetos := TDataSource.Create(Self);
  dsProjetos.DataSet := cdsProjetos;

  cdsProjetos.FieldDefs.Add('IdProjeto',ftInteger);
  cdsProjetos.FieldDefs.Add('NomeProjeto',ftString, 60);
  cdsProjetos.FieldDefs.Add('Valor',ftCurrency);

  cdsProjetos.CreateDataSet;

  dgProjetos.DataSource := dsProjetos;
end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LiberarComponentes;
  Destroy;
end;

procedure TfTarefa3.FormCreate(Sender: TObject);
begin
  CriarComponentes;
end;

procedure TfTarefa3.FormShow(Sender: TObject);
begin
  PopularProjetos;
end;

procedure TfTarefa3.LiberarComponentes;
begin
  FreeAndNil(cdsProjetos);
  FreeAndNil(dsProjetos);
end;

procedure TfTarefa3.ObterTotal;
var
  eTotal: Extended;
begin
  eTotal := 0;
  cdsProjetos.First;
  while not cdsProjetos.Eof do
  begin
    eTotal := eTotal + cdsProjetos.FindField('Valor').AsCurrency;
    cdsProjetos.Next;
  end;

  edtTotal.Text := Format('%.2f', [eTotal]);
end;

procedure TfTarefa3.ObterTotalDivisoes;
var
  eTotalDiv, eValorAnterior: Extended;
begin
  eTotalDiv := 0;
  eValorAnterior := 0;
  cdsProjetos.First;
  while not cdsProjetos.Eof do
  begin
    if eValorAnterior <> 0 then
    begin
      eTotalDiv := eTotalDiv + cdsProjetos.FindField('Valor').AsCurrency / eValorAnterior;
    end;

    eValorAnterior := cdsProjetos.FindField('Valor').AsCurrency;
    cdsProjetos.Next;
  end;

  EdtTotalDiv.Text := Format('%.2f', [eTotalDiv]);
end;

procedure TfTarefa3.PopularProjetos;
var
  iPos: Integer;
begin
  for iPos := 1 to 10 do
  begin
    cdsProjetos.Append;
    cdsProjetos.FindField('IdProjeto').AsInteger := iPos;
    cdsProjetos.FindField('NomeProjeto').AsString := 'Projeto ' + IntToStr(iPos);
    cdsProjetos.FindField('Valor').AsCurrency := iPos*10;
    cdsProjetos.Post;
  end;
end;

end.
