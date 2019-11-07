object frmFuncoes: TfrmFuncoes
  Left = 0
  Top = 0
  Caption = 'Funcoes'
  ClientHeight = 234
  ClientWidth = 290
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object qryAuxiliar: TFDQuery
    CachedUpdates = True
    Connection = DM_CREDIT.FDConexao
    SQL.Strings = (
      '')
    Left = 40
    Top = 30
  end
  object dtsAuxiliar: TDataSource
    DataSet = qryAuxiliar
    Left = 104
    Top = 30
  end
  object FDQueryAutoincre: TFDQuery
    Connection = DM_CREDIT.FDConexao
    SQL.Strings = (
      'select * from cliente')
    Left = 43
    Top = 112
  end
  object dtsAutoincre: TDataSource
    DataSet = FDQueryAutoincre
    Left = 83
    Top = 112
  end
end
