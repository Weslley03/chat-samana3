unit uFrmCadastrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmCadastrar = class(TForm)
    Label1: TLabel;
    EdEmail: TEdit;
    EdNome: TEdit;
    BtCadastrar: TButton;
    procedure BtCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastrar: TFrmCadastrar;

implementation

{$R *.dfm}

uses uDataModule01;

procedure TFrmCadastrar.BtCadastrarClick(Sender: TObject);
begin

  if (EdEmail.Text <> '') AND (EdNome.Text <> '') then
  begin
    DataModule01.TableUsuario.Open;
    DataModule01.TableUsuario.Insert;
    DataModule01.TableUsuarioEmailUsu.Value := EdEmail.Text;
    DataModule01.TableUsuarioNomeUSu.Value := EdNome.Text;
    DataModule01.TableUsuario.Post;
    DataModule01.TableUsuario.Close;

    ShowMessage('Conta Cadastrada.');
    EdEmail.Clear; EdNome.Clear;
  end
  else
  begin
    MessageDlg('Campos Vazios.', MtError, [MbOK], 0);
  end;

end;

end.
