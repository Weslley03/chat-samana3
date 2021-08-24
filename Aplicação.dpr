program Aplica��o;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uFrmCadastrar in 'uFrmCadastrar.pas' {FrmCadastrar},
  uDm in 'uDm.pas' {Dm: TDataModule},
  uFrmLogin in 'uFrmLogin.pas' {FrmLogin},
  uFrmChat in 'uFrmChat.pas' {FrmChat};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmCadastrar, FrmCadastrar);
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmChat, FrmChat);
  Application.Run;
end.
