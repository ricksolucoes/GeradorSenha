unit Setup.Gerador.Senha;

interface
uses
  Setup.Gerador.Senha.Contrato,
  Setup.Gerador.Senha.Enumerados,

  IdHashMessageDigest,

  System.SysUtils;

Type
  TSetupGeradorSenha =  class(TInterfacedObject, ISetupGeradorSenha)
  private
    FTamanho : Integer;
    FTipo : TTipoSenha;
    FPrefixo : string;
    FHash : Boolean;
  protected
    function SetTamanho(Const AValue: Integer) : ISetupGeradorSenha;
    function SetTipo(Const AValue: TTipoSenha) : ISetupGeradorSenha;
    function SetPrefixo(Const AValue: string) : ISetupGeradorSenha;
    function SetHash(Const AValue: Boolean) : ISetupGeradorSenha;

    function Executar: string;
  public
    constructor Create; overload;
    destructor Destroy; override;
    /// <summary>
    ///   Criar uma nova instancia para interface
    /// </summary>
    /// <returns>
    /// Retorna as opções da interfaces
    /// </returns>
    class function New : ISetupGeradorSenha; overload;

  end;

implementation

{ TSetupGeradorSenha }

constructor TSetupGeradorSenha.Create;
begin
  FTamanho:= 45;
  FPrefixo:= 'cs_';
  FHash:= True;
  FTipo:= TTipoSenha.TODOS;
end;

destructor TSetupGeradorSenha.Destroy;
begin

  inherited;
end;


function TSetupGeradorSenha.Executar: string;
const
  CHAVE1 = '1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  CHAVE2 = '1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  CHAVE3 = '1234567890abcdefghijklmnopqrstuvwxyz';
  CHAVE4 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  CHAVE5 = '1234567890';
  CHAVE6 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  CHAVE7 = 'abcdefghijklmnopqrstuvwxyz';
  CHAVE8 = '1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz~!@#$%^&*+-.,;:|?<>=';
var
  LChave : string;
  I      : Integer;
  LHash  : TIdHashMessageDigest5;
begin
  Result:= EmptyStr;

  case FTipo of
    TTipoSenha.TODOS                            : LChave:= CHAVE8;
    TTipoSenha.LETRA_MAIUSCULA_MINUSCULA_NUMERO : LChave:= CHAVE1;
    TTipoSenha.LETRA_MAIUSCULA_MINUSCULA        : LChave:= CHAVE4;
    TTipoSenha.LETRA_MAIUSCULA_NUMERO           : LChave:= CHAVE2;
    TTipoSenha.LETRA_MINUSCULA_NUMERO           : LChave:= CHAVE3;
    TTipoSenha.LETRA_MAIUSCULA                  : LChave:= CHAVE6;
    TTipoSenha.LETRA_MINUSCULA                  : LChave:= CHAVE7;
    TTipoSenha.NUMERO                           : LChave:= CHAVE5;
  end;

  for I := 0 to FTamanho do
    Result:= Result + LChave[Random(LChave.Length) + 1];

  if FHash then
  begin
    LHash := TIdHashMessageDigest5.Create;
    try
      Result := LHash.HashStringAsHex(Result);
    finally
      LHash.DisposeOf;
    end;
  end;

  Result := FPrefixo + Result;
end;

class function TSetupGeradorSenha.New: ISetupGeradorSenha;
begin
  Result:= Self.Create;
end;


function TSetupGeradorSenha.SetHash(const AValue: Boolean): ISetupGeradorSenha;
begin
  Result:= Self;
  FHash:= AValue;
end;

function TSetupGeradorSenha.SetPrefixo(const AValue: string): ISetupGeradorSenha;
begin
  Result:= Self;
  FPrefixo:= AValue;
end;

function TSetupGeradorSenha.SetTamanho(const AValue: Integer): ISetupGeradorSenha;
begin
  Result:= Self;
  FTamanho:= AValue;
end;

function TSetupGeradorSenha.SetTipo(const AValue: TTipoSenha): ISetupGeradorSenha;
begin
  Result:= Self;
  FTipo:= AValue;
end;

end.
