program Aplica��o;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uFrmCadastrar in 'uFrmCadastrar.pas' {FrmCadastrar},
  uDataModule01 in 'uDataModule01.pas' {DataModule01: TDataModule},
  uFrmLogin in 'uFrmLogin.pas' {FrmLogin},
  uFrmChat in 'uFrmChat.pas' {FrmChat};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmCadastrar, FrmCadastrar);
  Application.CreateForm(TDataModule01, DataModule01);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmChat, FrmChat);
  Application.Run;
end.
