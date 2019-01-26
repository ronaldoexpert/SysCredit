object frmPesquisa: TfrmPesquisa
  Left = 0
  Top = 0
  Caption = 'Pesquisa'
  ClientHeight = 336
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbgPesquisa: TDBGrid
    Left = 0
    Top = 0
    Width = 776
    Height = 251
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawDataCell = dbgPesquisaDrawDataCell
    OnDblClick = dbgPesquisaDblClick
    OnKeyDown = dbgPesquisaKeyDown
    OnTitleClick = dbgPesquisaTitleClick
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 251
    Width = 776
    Height = 85
    Align = alBottom
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 16
      Top = 7
      Width = 593
      Height = 67
      Caption = 'Pesquisa por '
      TabOrder = 0
      object lblPesquisa: TLabel
        Left = 14
        Top = 21
        Width = 52
        Height = 13
        Caption = 'lblPesquisa'
      end
      object edtPesquisa: TEdit
        Left = 14
        Top = 40
        Width = 467
        Height = 21
        TabOrder = 0
        OnChange = edtPesquisaChange
      end
      object btnFechar: TBitBtn
        Left = 505
        Top = 29
        Width = 79
        Height = 32
        Caption = '&Fechar'
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
        TabOrder = 1
        OnClick = btnFecharClick
      end
    end
  end
  object dtsPesquisa: TDataSource
    DataSet = qryPesquisa
    Left = 504
    Top = 66
  end
  object qryPesquisa: TFDQuery
    AutoCalcFields = False
    Connection = DM_CREDIT.FDConexao
    SQL.Strings = (
      '')
    Left = 440
    Top = 66
  end
end
