unit uFrmSingleChat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, uDm;

type
  TFrmSingleChat = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    MChatConteudo: TMemo;
    BtnChatClear: TButton;
    BtnChatOk: TButton;
    EdTexto: TEdit;
    LbApelido: TLabel;
    LbStatus: TLabel;
    LbApelidoRecipiente: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel4: TPanel;
    Panel3: TPanel;
    procedure FormShow(Sender: TObject);
    procedure BtnChatClearClick(Sender: TObject);
    procedure EdTextoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnChatOkClick(Sender: TObject);
  private
    FApelido: String;
    FEmail: String;
    FEmailRecipiente: String;
    FApelidoRecipiente: String;
    { Private declarations }
  public
    { Public declarations }

    property Apelido : String read FApelido write FApelido;
    property Email : String read FEmail write FEmail;
    property EmailRecipiente : String read FEmailRecipiente write FEmailRecipiente;
    property ApelidoRecipiente : String read FApelidoRecipiente write FApelidoRecipiente;
  end;

var
  FrmSingleChat: TFrmSingleChat;

implementation

{$R *.dfm}

procedure TFrmSingleChat.BtnChatClearClick(Sender: TObject);
begin
  EdTexto.Text := '';
end;

procedure TFrmSingleChat.BtnChatOkClick(Sender: TObject);
var
  Mensagem, From, Destinario: String;
begin
  Mensagem := EdTexto.Text;
  From := FEmail;
  Destinario := FEmailRecipiente;
  if EdTexto.Text <> '' then
  begin
    with Dm.Query do
    begin
      SQL.Clear;
      SQL.Text := 'INSERT INTO mensagem ' +
      '(TEXTO, REMETENTE, DESTINATARIO) ' +
      'VALUES ' +
      '(:msg, :from, :to)';
      Params[0].AsString := Mensagem;
      Params[1].AsString := From;
      Params[2].AsString := Destinario;
      ExecSQL;
    end;
    MChatConteudo.Lines.Add(FApelido + ': ' + EdTexto.Text);
    EdTexto.Text := '';
    EdTexto.SetFocus;
  end;
end;

procedure TFrmSingleChat.EdTextoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      BtnChatOk.Click;
    end;
end;

procedure TFrmSingleChat.FormShow(Sender: TObject);
begin
  if Apelido <> '' then
    LbApelido.Caption := Apelido
  else
    LbApelido.Caption := 'An�nimo';

  if ApelidoRecipiente <> '' then
    LbApelidoRecipiente.Caption := ApelidoRecipiente
  else
    LbApelidoRecipiente.Caption := 'An�nimo';

  LbStatus.Caption := 'ONLINE';
end;

end.