object frmAbreCaixa: TfrmAbreCaixa
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmAbreCaixa'
  ClientHeight = 145
  ClientWidth = 289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 289
    Height = 145
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 124
    object btnConfirmar: TSpeedButton
      Left = 16
      Top = 110
      Width = 123
      Height = 22
      Caption = 'Confirmar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEFCFCFCFAFAFAF9F9F9F9F9F9FAFAFAFCFCFCFEFEFEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF5F5F5EDEDEDE7E7E7E1E1E1DC
        DCDCDCDCDCE1E1E1E7E7E7EDEDEDF5F5F5FCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
        FCFCFCF5F5F5EDEDEDE7E7E78EA69A50A07EBFC4C1E1E1E1E7E7E7EDEDEDF5F5
        F5FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFB7FAA964DAB8A3B
        A58174A48EFAFBFBFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF1F6F46EAE924BAD8B32A37D32A37D51AD8BD2E2DBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFE863AF8F46AE8B37A78238A88337
        A7823EAA8671B497FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        58AA8742AF8A3BAC8650B49258A98652B5933BAC8658B493C1DFD1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0CDB957B7955AB79685C0A6F2F9F65D
        AF8D40B08B42B18C68B293FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFFFE8EC4ACADD4C2FFFFFFFFFFFFAFD6C55EBC9B44B48F5DBC9BB1D7C6FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
        FEFD68B4944CBA9549B99362B290F8FBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3E1D465C19F4CBD9760C4A2A0CF
        BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF76BA9D58C3A051C19C63B897EFF8F4FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6EBE268C2A255C6A06ACD
        AC9BCBB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF85C3A870C9A97CBDA0E3F2ECFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F9F6D2E8DEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btnConfirmarClick
    end
    object lblSuprimento: TLabel
      Left = 16
      Top = 70
      Width = 54
      Height = 13
      Caption = 'Suprimento'
    end
    object lblAbreCaixa: TLabel
      Left = 48
      Top = 4
      Width = 169
      Height = 26
      Caption = 'Abertura de Caixa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = 26
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnFechar: TSpeedButton
      Left = 150
      Top = 110
      Width = 123
      Height = 22
      Caption = 'Fechar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEFCFCFCFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCFC
        FCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6AFAFAE93939193939193
        9391939391939391939391939391949492ADACABF1F2F1FFFFFFFFFFFFFFFFFF
        FFFFFFF2F2F37D867F6CA2843381552E7F522E7F522E7F522E7F522E7F522E7F
        525C7967EEEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7DB2E3E4ECCDD5D176
        99853A755330724C30724C30724C30724C6E8D7AFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF6666CB4544CBD0D2E2DCDFDFBFC4C179908336674A2C67452C67
        4570927DFFFFFFFFFFFFC9C8EF6565D66565D66767D73D3CCE0707D93333CCAF
        B2CFC4CAC8B9BFBC75897E275C3D275C3D6F907CFFFFFFFFFFFFB0B0E71515DC
        0101D90101D90101D90101D90404DA2626D08D90BEB3BAB775877D2250352250
        356E8C7AFFFFFFFFFFFFB1B1E82222EF1C1CEE2727EF2C2CEF2B2BEF2424EF25
        25EC4D4EC0B2B9B773837A1D452E1D452E6D8977FFFFFFFFFFFFB1B1E84B4BFE
        4B4BFE4B4BFE4B4BFE3C3CFE4747F96B6CCDC0C6C7757977727F771839261839
        266B8675FFFFFFFFFFFFE5E5F8B2B2E9B3B2E9B5B4EA5857D33D3DF67D7DD3D6
        D9D9C4CAC88F9492717C76132E1E132E1E6A8373FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF6E6DD28D8DD7E8EAEAD7DBDAC4CAC8B3BAB77079740F23170F23
        17698071FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9CB8ECEEEEE8EBEAD7
        DBDAC4CAC8B3BAB76E75710A17100A1710677C6FFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFADAFAFECEEEEE8EBEAD7DBDAC2C7C5A9B0AD666A68050C08050C
        0866796DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADAEABECEEEEDEE0E0A8
        ABAA848886777C7A42444300010100020166776CFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC1C2C0A6A7A49292908B8C8A8485847C7D7C7272716869676667
        659A9D9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btnFecharClick
    end
    object cmbxConta: TDBLookupComboBox
      Left = 16
      Top = 43
      Width = 257
      Height = 21
      ListSource = dtsAuxiliar
      TabOrder = 0
    end
    object edtSuprimento: TEdit
      Left = 16
      Top = 86
      Width = 121
      Height = 21
      TabOrder = 1
      TextHint = '0,00'
    end
  end
  object dtsAuxiliar: TDataSource
    DataSet = qryAuxiliar
    Left = 240
    Top = 56
  end
  object qryAuxiliar: TFDQuery
    CachedUpdates = True
    Connection = DM_CREDIT.FDConexao
    SQL.Strings = (
      '')
    Left = 176
    Top = 56
  end
end