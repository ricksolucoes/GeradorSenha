program Exemplo;

uses
  Vcl.Forms,
  Exemplo.View in 'src\Exemplo.View.pas' {PageMain},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sky');
  Application.CreateForm(TPageMain, PageMain);
  Application.Run;
end.
