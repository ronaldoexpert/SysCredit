object frmPedido: TfrmPedido
  Left = 0
  Top = 0
  Caption = 'Pedido'
  ClientHeight = 439
  ClientWidth = 878
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 52
    Width = 878
    Height = 312
    Align = alClient
    Color = clBtnHighlight
    ParentBackground = False
    TabOrder = 0
    object lblProduto: TLabel
      Left = 8
      Top = 48
      Width = 105
      Height = 13
      Caption = 'F5 - Pesquisa Produto'
    end
    object dbgPedido: TDBGrid
      Left = 337
      Top = 1
      Width = 540
      Height = 310
      Align = alRight
      DataSource = dtsGrid
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object edtProduto: TEdit
      Left = 8
      Top = 16
      Width = 277
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 22
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = edtProdutoClick
      OnExit = edtProdutoExit
      OnKeyDown = edtProdutoKeyDown
      OnKeyPress = edtProdutoKeyPress
    end
    object btnPesquisaProduto: TBitBtn
      Left = 291
      Top = 16
      Width = 34
      Height = 31
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAFBFBFBFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFBFBFAFAFAFDFDFDFFFFFFF7F7F7BABABA
        878785868684BBBBBAF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF7F7F7BBBBBB8788
        86868684BABAB9F7F7F7C8C8C77477744F4F4F6263627A7C7AC0C0C0FAFAFAFF
        FFFFFFFFFFFAFAFAC1C1C07477744F4F4F6263627A7D7AC8C8C88E8F8D2A2A2A
        6D6D6D8282825F5F5F858684ECECECFCFCFCFCFCFCECECEC8687852A2A2A6D6D
        6D8282825F5F5F8C8C8A9394912E2E2EB2B2B27070704747476568646F706CE4
        E4E4E4E4E47374716E706C2E2E2EB2B2B270707047474791918FC1C1C0707371
        282929212221696D6B4F514E6164619A9A999B9A99656865595C587579782829
        29212221686B69C1C1BFFEFEFE92928F9297947A7F7D484A464F53505C5F5E60
        625F60625F686C6A4F535070736F9BA19E767B7882827FFFFFFFFFFFFFFEFEFE
        7A7A76747774989D9A8C928F6568656D706E6266637C7F7B8288867579775355
        5271716DFDFDFDFFFFFFFFFFFFFFFFFFF3F3F3BDBDBC8E8E8B7C7F7B5758548D
        908D6D706D6E706B686A66898986BABAB8F1F1F1FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFAFAF99FA09DBCBCBADFDFDEDCDCDCBDBDBB9E9F9CF9F9F9FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 2
      TabStop = False
      OnClick = btnPesquisaProdutoClick
    end
  end
  object pnlBotton: TPanel
    Left = 0
    Top = 364
    Width = 878
    Height = 75
    Align = alBottom
    Color = clBtnHighlight
    ParentBackground = False
    TabOrder = 1
    object btnFecharCaixa: TSpeedButton
      Left = 139
      Top = 6
      Width = 113
      Height = 27
      Caption = 'Fechar Caixa (F8)'
      OnClick = btnFecharCaixaClick
    end
    object btnNovaVenda: TSpeedButton
      Left = 8
      Top = 6
      Width = 113
      Height = 27
      Caption = 'Nova Venda (F1)'
      OnClick = btnNovaVendaClick
    end
    object btnFinalizaVenda: TSpeedButton
      Left = 8
      Top = 38
      Width = 113
      Height = 27
      Caption = 'Finalizar Venda (F4)'
      OnClick = btnFinalizaVendaClick
    end
    object btnFechar: TSpeedButton
      Left = 266
      Top = 39
      Width = 113
      Height = 27
      Caption = 'Fechar (ESC)'
      OnClick = btnFecharClick
    end
    object btnRetirada: TSpeedButton
      Left = 139
      Top = 39
      Width = 113
      Height = 27
      Caption = 'Retirada (F9)'
      OnClick = btnRetiradaClick
    end
    object btnPrevia: TSpeedButton
      Left = 266
      Top = 6
      Width = 113
      Height = 27
      Caption = 'Pr'#233'via Caixa (F3)'
      OnClick = btnPreviaClick
    end
    object edtTotal: TEdit
      Left = 734
      Top = 6
      Width = 137
      Height = 38
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 30
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0,00'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 878
    Height = 52
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
  end
  object qryListaProdutos: TFDQuery
    CachedUpdates = True
    Connection = DM_CREDIT.FDConexao
    SQL.Strings = (
      '')
    Left = 160
    Top = 178
  end
  object dtsListaProdutos: TDataSource
    DataSet = qryListaProdutos
    Left = 224
    Top = 178
  end
  object qryGrid: TFDQuery
    CachedUpdates = True
    Connection = DM_CREDIT.FDConexao
    SQL.Strings = (
      '')
    Left = 176
    Top = 114
  end
  object dtsGrid: TDataSource
    DataSet = qryGrid
    Left = 240
    Top = 114
  end
  object qryVenda: TFDQuery
    CachedUpdates = True
    Connection = DM_CREDIT.FDConexao
    SQL.Strings = (
      '')
    Left = 152
    Top = 250
  end
  object dtsVenda: TDataSource
    DataSet = qryVenda
    Left = 216
    Top = 250
  end
end
