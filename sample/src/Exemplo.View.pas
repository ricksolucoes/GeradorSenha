unit Exemplo.View;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Setup.Gerador.Senha,
  Setup.Gerador.Senha.Enumerados;

type
  TPageMain = class(TForm)
    edtTamanho: TLabeledEdit;
    cbxTipo: TComboBox;
    Label1: TLabel;
    edtPrefixo: TLabeledEdit;
    btGerar: TButton;
    cbHash: TCheckBox;
    Memo: TMemo;
    procedure btGerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageMain: TPageMain;

implementation

{$R *.dfm}

procedure TPageMain.btGerarClick(Sender: TObject);
var
  LTipo : TTipoSenha;
begin
  LTipo := TTipoSenha.TODOS;
  case cbxTipo.ItemIndex of
    0: LTipo:= TTipoSenha.TODOS;
    1: LTipo:= TTipoSenha.LETRA_MAIUSCULA_MINUSCULA_NUMERO;
    2: LTipo:= TTipoSenha.LETRA_MAIUSCULA_MINUSCULA;
    3: LTipo:= TTipoSenha.LETRA_MAIUSCULA_NUMERO;
    4: LTipo:= TTipoSenha.LETRA_MINUSCULA_NUMERO;
    5: LTipo:= TTipoSenha.LETRA_MAIUSCULA;
    6: LTipo:= TTipoSenha.LETRA_MINUSCULA;
    7: LTipo:= TTipoSenha.NUMERO;
  end;

  Memo.Lines.Clear;
  Memo.Lines.Add(TSetupGeradorSenha.New
                      .SetTamanho(StrToIntDef(edtTamanho.Text, 14))
                      .SetTipo(LTipo)
                      .SetPrefixo(edtPrefixo.Text)
                      .SetHash(cbHash.Checked)
                        .Executar);
end;

procedure TPageMain.FormCreate(Sender: TObject);
begin
  cbxTipo.Items.Clear;
  cbxTipo.Items.Add('Todos');
  cbxTipo.Items.Add('Maiúsculo-Minúsculo-Número');
  cbxTipo.Items.Add('Maiúsculo-Minúsculo');
  cbxTipo.Items.Add('Maiúsculo-Número');
  cbxTipo.Items.Add('Minúsculo-Número');
  cbxTipo.Items.Add('Maiúsculo');
  cbxTipo.Items.Add('Minúsculo');
  cbxTipo.Items.Add('Número');
  cbxTipo.ItemIndex:= 0;
end;

end.
