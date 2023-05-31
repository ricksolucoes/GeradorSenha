unit Setup.Gerador.Senha.Contrato;

interface
uses
  Setup.Gerador.Senha.Enumerados;

Type
  ISetupGeradorSenha      = interface
    ['{14B339A2-5DAE-436F-B282-D828536F24BC}']
    /// <summary>
    /// Define o tamanho da senha a ser gerada.
    /// </summary>
    /// <param name="AValue">O tamanho da senha.</param>
    /// <returns>A instância atual do gerador de senha.</returns>
    function SetTamanho(Const AValue: Integer) : ISetupGeradorSenha;
    /// <summary>
    /// Define o tipo de caracteres que vai conter na senha a ser gerada.
    /// </summary>
    /// <param name="AValue">O tipo da senha.</param>
    /// <returns>A instância atual do gerador de senha.</returns>
    function SetTipo(Const AValue: TTipoSenha) : ISetupGeradorSenha;
    /// <summary>
    /// Define o tamanho o prefixo (que vem no inicio da senha por padrão vem "cs_") a ser gerada.
    /// </summary>
    /// <param name="AValue">O tamanho da senha.</param>
    /// <returns>A instância atual do gerador de senha.</returns>
    function SetPrefixo(Const AValue: string) : ISetupGeradorSenha;
    /// <summary>
    /// Define se a senha gerada deve ser convertida para hash.
    /// </summary>
    /// <param name="AValue">Indica se a senha deve ser convertida para hash.</param>
    /// <returns>A instância atual do gerador de senha.</returns>
    function SetHash(Const AValue: Boolean) : ISetupGeradorSenha;
    /// <summary>
    /// Executa o processo de geração da senha e retorna a senha gerada.
    /// </summary>
    /// <returns>A senha gerada.</returns>
    function Executar: string;

  end;

implementation

end.
