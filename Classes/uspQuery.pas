unit uspQuery;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

const
  ENTER = #13#10;

type
  TspQuery = class(TFDQuery)
  private
    FspCondicoes: TStringList;
    FspColunas: TStringList;
    FspTabelas: TStringList;
    FSQL: string;

    procedure InicializaComponentes;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(Aowner: TComponent); override;

    property SQL: string Read FSQL;

    function GeraSQL: string;

    Destructor Destroy; override;
  published
    { Published declarations }
    property spCondicoes: TStringList read FspCondicoes write FspCondicoes;
    property spColunas: TStringList read FspColunas write FspColunas;
    property spTabelas: TStringList read FspTabelas write FspTabelas;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('spComponentes', [TspQuery]);
end;

{ TspQuery }

constructor TspQuery.Create(Aowner: TComponent);
begin
  inherited;

  InicializaComponentes;
end;

destructor TspQuery.Destroy;
begin
  spCondicoes.Free;
  spColunas.Free;
  spTabelas.Free;
  inherited;
end;

function TspQuery.GeraSQL: string;
begin
  try
    if spTabelas.Count > 1 then
    begin
      raise Exception.Create('É permitido informar apenas uma tabela para geração do SQL');
    end
    else if spTabelas.Count = 0 then
    begin
      raise Exception.Create('É necessário informar uma tabela para geração do SQL');
    end;

    FSQL := 'SELECT ' + ENTER;

    if spColunas.Count > 0 then
    begin
      FSQL := FSQL + Trim(spColunas.Text) + ENTER;
    end
    else
    begin
      FSQL := FSQL + '*' + ENTER;
    end;

    FSQL := FSQL + 'FROM ' + ENTER + Trim(spTabelas.Text);

    if spCondicoes.Count > 0 then
    begin
      FSQL := FSQL + ENTER + 'WHERE ' + ENTER + Trim(spCondicoes.Text);
    end;

    Result := FSQL;
  except
    on E:Exception do
    begin
      FSQL := '';
      raise Exception.Create('Erro ao gerar SQL.' + ENTER + 'Mensagem Original: ' + E.Message);
    end;
  end;

end;

procedure TspQuery.InicializaComponentes;
begin
  FspCondicoes := TStringList.Create;
  FspColunas := TStringList.Create;
  FspTabelas := TStringList.Create;
end;

end.
