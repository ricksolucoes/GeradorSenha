# GeradorSenha

## ⚙️ Installation
Installation is done using the [`boss install`](https://github.com/HashLoad/boss) command:
``` sh
boss install https://github.com/ricksolucoes/GeradorSenha
```
## ⚡️ Setup.Gerador.Senha.Enumerados:

This unit contains the definition of the enumerated type `TTipoSenha`, which represents different types of passwords that can be generated. The values of the enumerated type are as follows:

- **TODOS**: All types of characters (uppercase letters, lowercase letters, numbers, and special characters).
- **LETRA_MAIUSCULA_MINUSCULA_NUMERO**: Uppercase letters, lowercase letters, and numbers.
- **LETRA_MAIUSCULA_MINUSCULA**: Uppercase and lowercase letters.
- **LETRA_MAIUSCULA_NUMERO**: Uppercase letters and numbers.
- **LETRA_MINUSCULA_NUMERO**: Lowercase letters and numbers.
- **LETRA_MAIUSCULA**: Uppercase letters only.
- **LETRA_MINUSCULA**: Lowercase letters only.
- **NUMERO**: Numbers only.

This unit is imported by the `Setup.Gerador.Senha.Contrato` unit to be used as a parameter type in one of the interface methods.

## ⚡️ Setup.Gerador.Senha.Contrato:

This unit contains the definition of the `ISetupGeradorSenha` interface, which defines the methods for configuring and generating passwords. The available methods are:

- `SetTamanho`: Sets the size of the password to be generated.
- `SetTipo`: Sets the type of characters that the password should contain.
- `SetPrefixo`: Sets the prefix size to be added to the generated password.
- `SetHash`: Sets whether the generated password should be converted to a hash.
- `Executar`: Executes the password generation process and returns the generated password.

This interface is implemented by the `TSetupGeradorSenha` class and is used to define the operations available for configuring and generating passwords.

## ⚡️ Setup.Gerador.Senha:

This unit contains the implementation of the `TSetupGeradorSenha` class, which is responsible for generating passwords based on the provided configurations. The class inherits from `TInterfacedObject` and implements the `ISetupGeradorSenha` interface. The class has the following members:

- `FTamanho`: Variable that stores the size of the password to be generated.
- `FTipo`: Variable that stores the type of characters that the password should contain.
- `FPrefixo`: Variable that stores the prefix to be added to the generated password.
- `FHash`: Variable that indicates whether the generated password should be converted to a hash.
- `SetTamanho`: Method that sets the size of the password to be generated.
- `SetTipo`: Method that sets the type of characters that the password should contain.
- `SetPrefixo`: Method that sets the prefix to be added to the generated password.
- `SetHash`: Method that sets whether the generated password should be converted to a hash.
- `Executar`: Method that executes the password generation process and returns the generated password.
- `Create`: Constructor of the class, where the initial configurations are defined.
- `Destroy`: Destructor of the class.
- `New`: Static class method that creates a new instance of the class.

The `TSetupGeradorSenha` class implements the methods defined in the `ISetupGeradorSenha` interface and uses a character key to generate the password based on the specified size and type. If the hash option is enabled, the generated password will be converted to a hash using the MD5 algorithm.

🌱 Here's an example of how to use the `TSetupGeradorSenha` class to generate a password:

```delphi
var
  setup: ISetupGeradorSenha;
  senha: string;
begin
  setup := TSetupGeradorSenha.New;

  // Configuring the password
  setup.SetTamanho(8)
       .SetTipo(TTipoSenha.UPPER_LOWER_NUMBER)
       .SetPrefixo('cs_')
       .SetHash(True);

  // Generating the password
  senha := setup.Executar;

  // Displaying the generated password
  ShowMessage('Generated password: ' + senha);
end;
```
# GeradorSenha (Português)
## ⚙️ Instalação
A instalação pode ser feita usando o comando [`boss install`](https://github.com/HashLoad/boss):

```sh
boss install https://github.com/ricksolucoes/GeradorSenha
```
## ⚡️Setup.Gerador.Senha.Enumerados:

Esta unidade contém a definição do tipo enumerado `TTipoSenha`, que representa os diferentes tipos de senhas que podem ser geradas. Os valores do tipo enumerado são os seguintes:

- TODOS: Todos os tipos de caracteres (letras maiúsculas, minúsculas, números e caracteres especiais).
- LETRA_MAIUSCULA_MINUSCULA_NUMERO: Letras maiúsculas, minúsculas e números.
- LETRA_MAIUSCULA_MINUSCULA: Letras maiúsculas e minúsculas.
- LETRA_MAIUSCULA_NUMERO: Letras maiúsculas e números.
- LETRA_MINUSCULA_NUMERO: Letras minúsculas e números.
- LETRA_MAIUSCULA: Apenas letras maiúsculas.
- LETRA_MINUSCULA: Apenas letras minúsculas.
- NUMERO: Apenas números.

Esta unidade é importada pela unidade `Setup.Gerador.Senha.Contrato` para ser usada como tipo de parâmetro em um dos métodos da interface.

## ⚡️ Setup.Gerador.Senha.Contrato:

Esta unidade contém a definição da interface `ISetupGeradorSenha`, que define os métodos para configurar e gerar senhas. Os métodos disponíveis são:

- `SetTamanho`: Define o tamanho da senha a ser gerada.
- `SetTipo`: Define o tipo de caracteres que a senha deve conter.
- `SetPrefixo`: Define o tamanho do prefixo a ser adicionado à senha gerada.
- `SetHash`: Define se a senha gerada deve ser convertida em hash.
- `Executar`: Executa o processo de geração da senha e retorna a senha gerada.

Esta interface é implementada pela classe `TSetupGeradorSenha` e é usada para definir as operações disponíveis para configurar e gerar senhas.

## ⚡️ Setup.Gerador.Senha:

Esta unidade contém a implementação da classe `TSetupGeradorSenha`, que é responsável por gerar senhas com base nas configurações fornecidas. A classe herda de `TInterfacedObject` e implementa a interface `ISetupGeradorSenha`. A classe possui os seguintes membros:

- `FTamanho`: Variável que armazena o tamanho da senha a ser gerada.
- `FTipo`: Variável que armazena o tipo de caracteres que a senha deve conter.
- `FPrefixo`: Variável que armazena o prefixo a ser adicionado à senha gerada.
- `FHash`: Variável que indica se a senha gerada deve ser convertida em hash.
- `SetTamanho`: Método que define o tamanho da senha a ser gerada.
- `SetTipo`: Método que define o tipo de caracteres que a senha deve conter.
- `SetPrefixo`: Método que define o prefixo a ser adicionado à senha gerada.
- `SetHash`: Método que define se a senha gerada deve ser convertida em hash.
- `Executar`: Método que executa o processo de geração da senha e retorna a senha gerada.
- `Create`: Construtor da classe, onde as configurações iniciais são definidas.
- `Destroy`: Destrutor da classe.
- `New`: Método de classe estático que cria uma nova instância da classe.

A classe `TSetupGeradorSenha` implementa os métodos da interface `ISetupGeradorSenha` e utiliza uma chave de caracteres para gerar a senha com base no tamanho e tipo especificados. Se a opção de hash estiver ativada, a senha gerada será convertida em hash usando o algoritmo MD5.

🌱 Aqui está um exemplo de como utilizar a classe `TSetupGeradorSenha` para gerar uma senha:

```delphi
var
  setup: ISetupGeradorSenha;
  senha: string;
begin
  setup := TSetupGeradorSenha.New;

  // Configurando a senha
  setup.SetTamanho(8)
       .SetTipo(TTipoSenha.LETRA_MAIUSCULA_MINUSCULA_NUMERO)
       .SetPrefixo('cs_')
       .SetHash(True);

  // Gerando a senha
  senha := setup.Executar;

  // Exibindo a senha gerada
  ShowMessage('Senha gerada: ' + senha);
end;
