object DM_CREDIT: TDM_CREDIT
  OldCreateOrder = False
  Height = 302
  Width = 393
  object FDConexao: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=WIN1252'
      'DriverID=FB'
      'OpenMode=OpenOrCreate')
    LoginPrompt = False
    Left = 32
    Top = 34
  end
  object FDQuery1: TFDQuery
    CachedUpdates = True
    Connection = FDConexao
    SQL.Strings = (
      '')
    Left = 104
    Top = 34
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 168
    Top = 34
  end
  object qryConsulta: TFDQuery
    CachedUpdates = True
    Connection = FDConexao
    SQL.Strings = (
      '')
    Left = 104
    Top = 98
  end
  object dtsConsulta: TDataSource
    DataSet = qryConsulta
    Left = 168
    Top = 98
  end
  object qryCliente: TFDQuery
    CachedUpdates = True
    Connection = FDConexao
    SQL.Strings = (
      '')
    Left = 104
    Top = 162
  end
  object dtsCliente: TDataSource
    DataSet = qryCliente
    Left = 168
    Top = 162
  end
  object qryAuxiliar: TFDQuery
    CachedUpdates = True
    Connection = FDConexao
    SQL.Strings = (
      '')
    Left = 104
    Top = 210
  end
  object dtsAuxiliar: TDataSource
    DataSet = qryAuxiliar
    Left = 168
    Top = 210
  end
  object qryConfig: TFDQuery
    CachedUpdates = True
    Connection = FDConexao
    SQL.Strings = (
      '')
    Left = 240
    Top = 34
  end
  object dtsConfig: TDataSource
    DataSet = qryConfig
    Left = 304
    Top = 34
  end
  object dtsAutoincre: TDataSource
    DataSet = qryAutoincre
    Left = 304
    Top = 106
  end
  object qryAutoincre: TFDQuery
    CachedUpdates = True
    Connection = FDConexao
    SQL.Strings = (
      '')
    Left = 240
    Top = 106
  end
end
