object Dm: TDm
  OldCreateOrder = False
  Height = 344
  Width = 567
  object FDConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Archer\Documents\Git clone\chat-samana3\ARQUIV' +
        'O.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=127.0.0.1'
      'Port=3050'
      'DriverID=FB')
    Connected = False
    LoginPrompt = False
    Left = 40
    Top = 40
  end
  object QueryUsuario: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM chatusuario;')
    Left = 32
    Top = 128
  end
  object TableUsuario: TFDTable
    IndexFieldNames = 'EMAILUSU'
    Connection = FDConnection
    UpdateOptions.UpdateTableName = 'CHATUSUARIO'
    TableName = 'CHATUSUARIO'
    Left = 32
    Top = 192
    object TableUsuarioEMAILUSU: TStringField
      FieldName = 'EMAILUSU'
      Origin = 'EMAILUSU'
      Required = True
      Size = 100
    end
    object TableUsuarioNOMEUSU: TStringField
      FieldName = 'NOMEUSU'
      Origin = 'NOMEUSU'
      Required = True
    end
    object TableUsuarioONLINE: TIntegerField
      FieldName = 'ONLINE'
      Origin = 'ONLINE'
    end
  end
  object QueryUsuOnline: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'SELECT NomeUsu, EmailUsu FROM chatusuario WHERE Online = 1; ')
    Left = 112
    Top = 128
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files\Firebird\Firebird_2_5\WOW64\fbclient.dll'
    Left = 344
    Top = 64
  end
  object Query: TFDQuery
    Connection = FDConnection
    Left = 312
    Top = 160
  end
end
