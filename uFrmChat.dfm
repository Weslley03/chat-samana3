object FrmChat: TFrmChat
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Chat'
  ClientHeight = 475
  ClientWidth = 768
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 768
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'CHAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object LbApelido: TLabel
      Left = 10
      Top = 18
      Width = 65
      Height = 19
      Caption = 'An'#244'nimo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LbStatus: TLabel
      Left = 680
      Top = 18
      Width = 60
      Height = 19
      Caption = 'STATUS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 46
    Width = 185
    Height = 424
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 0
      Top = 40
      Width = 185
      Height = 384
      Align = alBottom
      DataSource = DataSourceUsuarioOnline
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NOMEUSU'
          Title.Caption = 'Online'
          Width = 168
          Visible = True
        end>
    end
  end
  object EdPesquisar: TEdit
    Left = 8
    Top = 59
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'pesquisar'
  end
  object BtOK: TButton
    Left = 137
    Top = 59
    Width = 42
    Height = 21
    Caption = 'OK'
    TabOrder = 3
    OnClick = BtOKClick
  end
  object PanelChat: TPanel
    Left = 196
    Top = 59
    Width = 564
    Height = 358
    BevelOuter = bvNone
    TabOrder = 4
    object Memo1: TMemo
      Left = 0
      Top = 0
      Width = 564
      Height = 358
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      TabOrder = 0
    end
  end
  object EdTexto: TEdit
    Left = 198
    Top = 429
    Width = 427
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TextHint = 'digite aqui...'
  end
  object Button1: TButton
    Left = 631
    Top = 429
    Width = 58
    Height = 31
    Caption = 'OK'
    TabOrder = 6
  end
  object Button2: TButton
    Left = 695
    Top = 429
    Width = 58
    Height = 31
    Caption = 'LIMP'
    TabOrder = 7
    OnClick = Button2Click
  end
  object DataSourceUsuarioOnline: TDataSource
    DataSet = DataModule01.QueryUsuOnline
    Left = 168
  end
  object Timer01: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = Timer01Timer
    Left = 264
    Top = 8
  end
end
