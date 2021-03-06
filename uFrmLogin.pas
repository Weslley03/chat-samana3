unit uFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uFrmChat;

type
  TFrmLogin = class(TForm)
    Label1: TLabel;
    EdEmail: TEdit;
    EdApelido: TEdit;
    BtEntrar: TButton;
    procedure BtEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses uDataModule01;

procedure TFrmLogin.BtEntrarClick(Sender: TObject);
begin
                  
  if (EdEmail.Text) <> '' then  //VALIDA SE O USUARIO TEM CONTA CADASTRADA NO BANCO
  begin
    DataModule01.QueryUsuario.SQL.Clear;
    DataModule01.QueryUsuario.SQL.Add('SELECT EmailUsu FROM chatusuario');
    DataModule01.QueryUsuario.SQL.Add('WHERE EmailUsu = '+QuotedStr(Trim(EdEmail.Text)) );
    DataModule01.QueryUsuario.Open;
    if not DataModule01.QueryUsuario.IsEmpty then
    begin
      FrmChat.Apelido := EdApelido.Text;
      FrmChat.Email := EdEmail.Text;
      FrmChat.Show;
    end
  end
  else
  begin
    MessageDlg('Usuario inválido.', MtError, [MbOK], 0);
  end;

  if (EdEmail.Text = '') AND (EdApelido.Text = '') then
  begin
    MessageDlg('Campos vazios.', MtError, [MbOK], 0);
  end;

   with DataModule01.TableUsuario do
  begin //AQUI É ONDE O UPDATE ONLINE = 0 PARA ONLINE 1 OCORRE

    Close;
    SQL.Clear;
    SQL.Add('UPDATE chatusuario SET Online = 1 WHERE EmailUsu =:pnom ');
    ParamByName('pnom').AsString := EdEmail.Text;
    ExecSQL;

  end;

end;

end.
