unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  uFrmCadastrar, uFrmLogin;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    procedure Panel2Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.Panel1Click(Sender: TObject);
begin
  FrmLogin.Show;
end;

procedure TFrmPrincipal.Panel2Click(Sender: TObject);
begin
  FrmCadastrar.Show;
end;

end.
