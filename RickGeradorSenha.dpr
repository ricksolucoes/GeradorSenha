program RickGeradorSenha;

uses
  Vcl.Forms,
  Setup.Gerador.Senha.Contrato in 'src\Setup.Gerador.Senha.Contrato.pas',
  Setup.Gerador.Senha.Enumerados in 'src\Setup.Gerador.Senha.Enumerados.pas',
  Setup.Gerador.Senha in 'src\Setup.Gerador.Senha.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Run;
end.
