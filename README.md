# GeradorSenha

## ⚙️ Installation
Installation is done using the [`boss install`](https://github.com/HashLoad/boss) command:
``` sh
boss install https://github.com/ricksolucoes/GeradorSenha
```
 ## ⚡️ Setup.Gerador.Senha.Enumerados:

<p>This unit contains the definition of the enumerated type <code>TTipoSenha</code>, which represents different types of passwords that can be generated. The values of the enumerated type are as follows:</p>

<ul>
  <li>TODOS: All types of characters (uppercase letters, lowercase letters, numbers, and special characters).</li>
  <li>LETRA_MAIUSCULA_MINUSCULA_NUMERO: Uppercase letters, lowercase letters, and numbers.</li>
  <li>LETRA_MAIUSCULA_MINUSCULA: Uppercase and lowercase letters.</li>
  <li>LETRA_MAIUSCULA_NUMERO: Uppercase letters and numbers.</li>
  <li>LETRA_MINUSCULA_NUMERO: Lowercase letters and numbers.</li>
  <li>LETRA_MAIUSCULA: Uppercase letters only.</li>
  <li>LETRA_MINUSCULA: Lowercase letters only.</li>
  <li>NUMERO: Numbers only.</li>
</ul>

<p>This unit is imported by the <code>Setup.Gerador.Senha.Contrato</code> unit to be used as a parameter type in one of the interface methods.</p>

## ⚡️ Setup.Gerador.Senha.Contrato:

<p>This unit contains the definition of the <code>ISetupGeradorSenha</code> interface, which defines the methods for configuring and generating passwords. The available methods are:</p>

<ul>
  <li><code>SetTamanho</code>: Sets the size of the password to be generated.</li>
  <li><code>SetTipo</code>: Sets the type of characters that the password should contain.</li>
  <li><code>SetPrefixo</code>: Sets the prefix size to be added to the generated password.</li>
  <li><code>SetHash</code>: Sets whether the generated password should be converted to a hash.</li>
  <li><code>Executar</code>: Executes the password generation process and returns the generated password.</li>
</ul>

<p>This interface is implemented by the <code>TSetupGeradorSenha</code> class and is used to define the operations available for configuring and generating passwords.</p>

## ⚡️ Setup.Gerador.Senha:</h2>

<p>This unit contains the implementation of the <code>TSetupGeradorSenha</code> class, which is responsible for generating passwords based on the provided configurations. The class inherits from <code>TInterfacedObject</code> and implements the <code>ISetupGeradorSenha</code> interface. The class has the following members:</p>

<ul>
  <li><code>FTamanho</code>: Variable that stores the size of the password to be generated.</li>
  <li><code>FTipo</code>: Variable that stores the type of characters that the password should contain.</li>
  <li><code>FPrefixo</code>: Variable that stores the prefix to be added to the generated password.</li>
  <li><code>FHash</code>: Variable that indicates whether the generated password should be converted to a hash.</li>
  <li><code>SetTamanho</code>: Method that sets the size of the password to be generated.</li>
  <li><code>SetTipo</code>: Method that sets the type of characters that the password should contain.</li>
  <li><code>SetPrefixo</code>: Method that sets the prefix to be added to the generated password.</li>
  <li><code>SetHash</code>: Method that sets whether the generated password should be converted to a hash.</li>
  <li><code>Executar</code>: Method that executes the password generation process and returns the generated password.</li>
  <li><code>Create</code>: Constructor of the class, where the initial configurations are defined.</li>
  <li><code>Destroy</code>: Destructor of the class.</li>
  <li><code>New</code>: Static class method that creates a new instance of the class.</li>
</ul>

<p>The <code>TSetupGeradorSenha</code> class implements the methods defined in the <code>ISetupGeradorSenha</code> interface and uses a character key to generate the password based on the specified size and type. If the hash option is enabled, the generated password will be converted to a hash using the MD5 algorithm.</p>

<p>Here's an example of how to use the <code>TSetupGeradorSenha</code> class to generate a password:</p>

```delphi
var
  setup: ISetupGeradorSenha;
  senha: string;
begin
  setup := TSetupGeradorSenha.New;

  // Configuring the password
  setup.SetTamanho(8)
       .SetTipo(TTipoSenha.LETRA_MAIUSCULA_MINUSCULA_NUMERO)
       .SetPrefixo('cs_')
       .SetHash(True);

  // Generating the password
  senha := setup.Executar;

  // Displaying the generated password
  ShowMessage('Generated password: ' + senha);
end;
