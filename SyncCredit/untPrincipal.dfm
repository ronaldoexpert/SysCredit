object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'SyncCredit - Sincronizador para BD Online'
  ClientHeight = 196
  ClientWidth = 388
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 0
    Top = 150
    Width = 388
    Height = 20
    Align = alBottom
    Alignment = taCenter
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitTop = 161
    ExplicitWidth = 7
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 170
    Width = 388
    Height = 26
    Align = alBottom
    Max = 500
    Smooth = True
    TabOrder = 5
    ExplicitTop = 181
    ExplicitWidth = 373
  end
  object chkCliente: TCheckBox
    Left = 17
    Top = 16
    Width = 125
    Height = 18
    Caption = 'Cliente'
    TabOrder = 0
  end
  object chkFormaPagto: TCheckBox
    Left = 17
    Top = 36
    Width = 125
    Height = 18
    Caption = 'Forma de Pagamento'
    TabOrder = 1
  end
  object chkFornecedor: TCheckBox
    Left = 17
    Top = 56
    Width = 125
    Height = 18
    Caption = 'Fornecedor'
    TabOrder = 2
  end
  object chkFinanceiro: TCheckBox
    Left = 17
    Top = 76
    Width = 125
    Height = 18
    Caption = 'Financeiro'
    TabOrder = 3
  end
  object btnSincronizar: TButton
    Left = 17
    Top = 112
    Width = 125
    Height = 25
    Caption = 'Sincronizar'
    TabOrder = 4
    OnClick = btnSincronizarClick
  end
  object cnnBDOnline: TMyConnection
    Database = 'syscredit'
    Username = 'rsilveiramig'
    Server = 'syscredit.mysql.uhserver.com'
    Connected = True
    LoginPrompt = False
    Left = 256
    Top = 232
    EncryptedPassword = '8DFF9EFF8EFF8AFF9AFF93FFCEFFCAFFD5FF'
  end
  object cnnCredit: TFDConnection
    Params.Strings = (
      'Database=C:\BD\Ronaldo\CREDIT.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 24
    Top = 224
  end
  object qryCredit: TFDQuery
    Connection = cnnCredit
    Left = 24
    Top = 280
  end
  object dtsCredit: TDataSource
    DataSet = qryCredit
    Left = 72
    Top = 280
  end
  object qryExporta: TMyQuery
    Connection = cnnBDOnline
    Left = 256
    Top = 288
  end
  object qryAuxiliar: TFDQuery
    Connection = cnnCredit
    Left = 24
    Top = 336
  end
  object dtAuxiliar: TDataSource
    DataSet = qryAuxiliar
    Left = 72
    Top = 336
  end
end
