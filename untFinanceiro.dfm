object frmFinanceiro: TfrmFinanceiro
  Left = 0
  Top = 0
  Caption = 'Cadastro de Finan'#231'as'
  ClientHeight = 519
  ClientWidth = 569
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotoes: TPanel
    Left = 0
    Top = 480
    Width = 569
    Height = 39
    Align = alBottom
    BorderStyle = bsSingle
    TabOrder = 0
    object btnNovo: TSpeedButton
      Left = 1
      Top = 1
      Width = 71
      Height = 33
      Align = alLeft
      Caption = 'Novo'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FBFBFBF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
        F9FAFAFAFFFFFFFFFFFFFFFFFFFDFDFDBFBFBFD3D3D3D5D5D5D5D5D5D6D6D6D7
        D7D7D8D8D8D9D9D9D9D9D9D9D9D9D9D9D9BFBFBFF8F8F8FFFFFFFFFFFFFFFFFF
        D2D2D2E8E8E8EAEAEAECECECEFEFEFF1F1F1F3F3F3F5F5F5F7F7F7F7F7F7F5F5
        F5D6D6D6FFFFFFFFFFFFFFFFFFFFFFFFD3D3D3E8E8E8EBEBEBEDEDEDEFEFEFF1
        F1F1F4F4F4F6F6F6F8F8F8F8F8F8F6F6F6D7D7D7FFFFFFFFFFFFFFFFFFFFFFFF
        D4D4D4E8E8E8EAEAEAECECECEFEFEFF1F1F1F3F3F3F5F5F5F7F7F7F7F7F7F5F5
        F5D6D6D6FFFFFFFFFFFFFFFFFFFFFFFFD4D4D4E8E8E8EAEAEAECECECEEEEEEF0
        F0F0F2F2F2F4F4F4F5F5F5F5F5F5F4F4F4D6D6D6FFFFFFFFFFFFFFFFFFFFFFFF
        D5D5D5E7E7E7E9E9E9EBEBEBEDEDEDEFEFEFF1F1F1F2F2F2F3F3F3F3F3F3F2F2
        F2D5D5D5FFFFFFFFFFFFFFFFFFFFFFFFD5D5D5E6E6E6E8E8E8EAEAEAECECECEE
        EEEEEFEFEFF0F0F0F1F1F1F1F1F1F0F0F0D5D5D5FFFFFFFFFFFFFFFFFFFFFFFF
        D5D5D5DBDCDC5A90B2E8E8E9E7E7E75A8FB0EDEDEDEEEEEEEFEFEFEFEFEFEEEE
        EED5D5D5FFFFFFFFFFFFFFFFFFFFFFFFD6D6D6D7D8D967A3C890B3C989ABC065
        A2C7EBEBEBECECECDBEDEDAEEEEF9DEEEFA5D9DAFBFEFEFFFFFFFFFFFFFFFFFF
        D6D6D6D8D8D860A2CA70AFD670AFD55FA1C9E9E9E9DCEAEB8BEEEF97F6F763F4
        F588ECEDAEF9FAFEFFFFFFFFFFFFFFFFD6D6D6D8D8D7519AC75AAADB5AAADB50
        99C6E7E7E7BBEAEA54EDEFEAFDFDFFFFFFAEF8F96FF6F8E9FDFDFFFFFFFFFFFF
        D6D6D6D7D6D64B97C551A6D951A6D94B97C5E5E5E5B4E9E9A1F5F5FEFFFFFFFF
        FFF4FEFE7EF7F8E4FDFDFFFFFFFFFFFFD5D5D5D5D5D44B97C551A6D951A6D94B
        97C5E3E3E3CBE5E675E6E778F3F5E4FDFD60F5F795F9F9F7FEFFFFFFFFFFFFFF
        CCCCCCC4C9CC78AFD18FC6E78FC6E76DA7CBD6D6D6D3D5D59AC4C47CE5E792F8
        F9A2F9FAE5FDFDFFFFFFFFFFFFFFFFFFFFFFFFCCDDE7BED5E3BBD3E3BBD3E3D5
        E4EDFFFFFFFFFFFFFFFFFFF7FEFEF0FEFEFAFFFFFFFFFFFFFFFF}
      OnClick = btnNovoClick
      ExplicitLeft = -5
      ExplicitTop = 3
    end
    object btnGravar: TSpeedButton
      Left = 72
      Top = 1
      Width = 72
      Height = 33
      Align = alLeft
      Caption = 'Gravar'
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
      OnClick = btnGravarClick
      ExplicitLeft = 366
      ExplicitHeight = 39
    end
    object btnExcluir: TSpeedButton
      Left = 144
      Top = 1
      Width = 72
      Height = 33
      Align = alLeft
      Caption = 'Excluir'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCF5F5F5F0F0F0E9E9E9E8E8E8EDEDEDF3F3F3FAFAFAFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAD5D5D5949595989B99A9ADABB0
        B5B2A6ABA8979B99888B8A8C8D8DCFCFCFF5F5F5FFFFFFFFFFFFFFFFFFFFFFFF
        E9E9E9939593B7BBB9B7BDB9D0D6D3C1C8C4C5CBC8A3A9A69DA3A0919794787B
        79E1E1E1FCFCFCFFFFFFFFFFFFFFFFFFFBFBFBA3A6A5B1B5B3C5C9C7D8DCDAB3
        B9B6C9CECC8C918E919693818683757A77F7F7F7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA8ABAAB0B4B2C5C9C7D6DAD8B3B9B6C6CBC88B908D8E93907D82806C70
        6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A8A7AFB4B1C3C8C5D5D9D7B3
        B9B6C2C7C48A8F8C8E93907D8280696D6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA5A8A7AFB3B1C2C6C4D5D9D7B3B9B6C0C5C2898E8B8D92907D8280696D
        6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A9A7AEB2B0C0C5C2D5D9D7B3
        B9B6BFC5C2888D8A8D928F7D8280696D6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA5A8A7A7ABA9A7ABA89EA2A07F8481858A876B6F6D787D7A777B79686C
        6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B8E8DA0A3A2BBBEBDDCDFDEDC
        DFDECED1D0B9BCBA9B9F9D818583646766FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E5E6E6B5B8B7CACECDE2E4E3EAECECE6E8E7DBDEDDCCD0CEBABEBDA2A7A58A8D
        8CE0E1E1FFFFFFFFFFFFFFFFFFFFFFFFD3D5D4EBECEBF3F4F3EBECECE3E5E4D4
        D7D5C7CCCABEC3C1B5BCB9B6BDBAAEB3B1CED0CFFFFFFFFFFFFFFFFFFFFFFFFF
        F4F5F4CACACAEAECEBDCDFDED4D6D5909492858A88BDC1BFAEB4B2B8BEBB9BA0
        9EF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9CFD0CFBCBEBDB9BCBBDC
        DDDDCED1D0A2A7A5ACAFAEC3C5C4F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF3F3F3B5B8B6ADB0B0F0F1F1FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ExplicitLeft = 143
      ExplicitTop = 0
      ExplicitHeight = 38
    end
    object btnCancelar: TSpeedButton
      Left = 216
      Top = 1
      Width = 72
      Height = 33
      Align = alLeft
      Caption = 'Cancelar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCF6F6F8EFEFF2ECECF0ECECF0F0F0F3F6F6F8FDFDFDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F6DBDBDCADADB45B5B992929A70D
        0DB20D0DB22828A75B5B99ADADB5DCDCDDF6F6F7FFFFFFFFFFFFFFFFFFF9F9FA
        D7D7D770709A1010B40404BB0000BA0000BA0000BA0000BA0404BB1111B56D6D
        9BD8D8D8FAFAFBFFFFFFFFFFFFFEFEFE8484B30B0BBC0000BC0000BC0000BC00
        00BC0000BC0000BC0000BC0000BC0C0CBC8181B6FEFEFEFFFFFFFFFFFFD3D3EC
        1313BE0000BF0000BF0000BE0000BE0000BE0000BE0000BE0000BE0000BE0000
        BE1313BECFCFEBFFFFFFFFFFFF5C5CCC0303C20000C10000C10000C10000C000
        00C00000C00000C00000C00000C00000C00303C05858CBFFFFFFF6F6FC1818BF
        0202C40404C40808C50C0CC61111C71515C81919C91C1CCA1C1CC91818C91212
        C70707C41818BFF2F2FBD0D0F12828CB1F1FCD3F3FD46464DC6565DC6565DC65
        65DC6565DC6565DC6565DC6464DC3737D21F1FCC2828CBCACAEFC7C7EF2B2BCF
        2020CF8686E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C
        DF2020CE2E2ECFC1C1ECDFDFF62B2BCC2020D22222D22424D22525D22626D227
        27D22727D22626D22525D22424D12222D12020D12D2DCCDADAF4FFFFFF3D3DC8
        2121D32323D32424D32626D42727D42828D42828D42727D42626D42424D32323
        D22121D23A3AC8FEFEFFFFFFFF9292DE2E2ED42323D32525D32626D42828D429
        29D42929D42828D42626D42525D32323D32D2DD48E8EDDFFFFFFFFFFFFF9F9FD
        4747CA2929D42525D42727D42828D42A2AD52A2AD52828D42727D42525D42828
        D44646CBF7F7FDFFFFFFFFFFFFFFFFFFE2E2F74444CA3030D52727D42828D42A
        2AD42A2AD42828D42727D42F2FD54242CADFDFF6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEEEEFA7474D53434CB3939D63434D63333D63939D73333CC7272D4EDED
        FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBF9ABABE58D
        8DDD8D8DDDAAAAE5E9E9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ExplicitLeft = 215
      ExplicitTop = 0
      ExplicitHeight = 38
    end
    object btnFechar: TSpeedButton
      Left = 492
      Top = 1
      Width = 72
      Height = 33
      Align = alRight
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
      ExplicitLeft = 288
      ExplicitTop = 24
      ExplicitHeight = 21
    end
  end
  object pnlDados: TPanel
    Left = 0
    Top = 0
    Width = 569
    Height = 289
    Align = alTop
    TabOrder = 1
    object lblNumero: TLabel
      Left = 16
      Top = 43
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object lblDtEmissao: TLabel
      Left = 121
      Top = 43
      Width = 38
      Height = 13
      Caption = 'Emiss'#227'o'
    end
    object lblDtVencimento: TLabel
      Left = 200
      Top = 43
      Width = 55
      Height = 13
      Caption = 'Vencimento'
    end
    object lblCliente: TLabel
      Left = 279
      Top = 43
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object lblFormaPagto: TLabel
      Left = 16
      Top = 82
      Width = 87
      Height = 13
      Caption = 'Forma Pagamento'
    end
    object lblOrigem: TLabel
      Left = 16
      Top = 130
      Width = 149
      Height = 13
      Caption = 'Origem Financeiro(Fornecedor)'
    end
    object lblValor: TLabel
      Left = 264
      Top = 130
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label1: TLabel
      Left = 16
      Top = 175
      Width = 53
      Height = 13
      Caption = 'Oberva'#231#227'o'
    end
    object lblParcelado: TLabel
      Left = 200
      Top = 225
      Width = 40
      Height = 13
      Caption = 'Parcelas'
    end
    object lblSelecao: TLabel
      Left = 506
      Top = 85
      Width = 47
      Height = 13
      Caption = 'lblSelecao'
      Visible = False
    end
    object edtId: TEdit
      Left = 478
      Top = 98
      Width = 75
      Height = 21
      TabOrder = 10
      Visible = False
    end
    object edtVencimento: TDBEdit
      Left = 200
      Top = 58
      Width = 73
      Height = 21
      DataSource = dtsFinanceiro
      TabOrder = 2
      OnExit = edtVencimentoExit
    end
    object edtCliente: TDBEdit
      Left = 279
      Top = 58
      Width = 49
      Height = 21
      DataSource = dtsFinanceiro
      TabOrder = 3
      OnExit = edtClienteExit
      OnKeyDown = edtClienteKeyDown
      OnKeyPress = edtClienteKeyPress
    end
    object edtValor: TDBEdit
      Left = 264
      Top = 146
      Width = 73
      Height = 21
      DataSource = dtsFinanceiro
      TabOrder = 6
    end
    object edtFormaPagto: TDBEdit
      Left = 16
      Top = 98
      Width = 49
      Height = 21
      DataSource = dtsFinanceiro
      TabOrder = 4
      OnExit = edtFormaPagtoExit
      OnKeyDown = edtFormaPagtoKeyDown
      OnKeyPress = edtFormaPagtoKeyPress
    end
    object edtDescrFormPagto: TEdit
      Left = 97
      Top = 98
      Width = 240
      Height = 21
      Enabled = False
      TabOrder = 11
    end
    object edtDescrCliente: TEdit
      Left = 368
      Top = 58
      Width = 185
      Height = 21
      Enabled = False
      TabOrder = 12
    end
    object edtOrigem: TDBEdit
      Left = 16
      Top = 146
      Width = 233
      Height = 21
      CharCase = ecUpperCase
      DataSource = dtsFinanceiro
      TabOrder = 5
      OnChange = edtOrigemChange
      OnExit = edtOrigemExit
    end
    object edtObs: TDBMemo
      Left = 16
      Top = 194
      Width = 170
      Height = 69
      DataSource = dtsFinanceiro
      TabOrder = 7
    end
    object edtNumero: TEdit
      Left = 16
      Top = 58
      Width = 76
      Height = 21
      TabOrder = 0
      OnExit = edtNumeroExit
    end
    object rdgrpTipo: TRadioGroup
      Left = 16
      Top = 7
      Width = 184
      Height = 33
      Columns = 2
      Enabled = False
      ItemIndex = 1
      Items.Strings = (
        'Individual'
        'Grupo')
      TabOrder = 13
      OnClick = rdgrpTipoClick
    end
    object btnGeraParcela: TBitBtn
      Left = 327
      Top = 238
      Width = 86
      Height = 25
      Caption = 'Gerar Parcelas'
      TabOrder = 9
      OnClick = btnGeraParcelaClick
      OnEnter = btnGeraParcelaEnter
    end
    object edtParcelas: TEdit
      Left = 200
      Top = 242
      Width = 118
      Height = 21
      TabOrder = 8
    end
    object btnPesqCliente: TBitBtn
      Left = 334
      Top = 56
      Width = 25
      Height = 25
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFF614F4F
        5E5E5E8B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF614F4F787599A883875E5E5E8B8B8BFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF65B8F4408CDB
        7F7AA5A883875E5E5E8B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF8294FF51B7FF408CDB7F7AA5A883875E5E5E8B8B8BFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8294FF
        51B7FF408CDB7F7AA5B087875E5E5E8B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8294FF55BBFF407DD27F7AA5A883876C
        666E6C666E6C666E6C666E6C666E8B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF8294FF51B7FF408CDB8B8B8B7B7B7BC49885D0AC93E3C9B1D5B4A47473
        736C666EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8294FF8294FFB08787F5
        D2A9FFF4C7FFFCD0FFFFDBFFFFDCFDF6E2A883876C666EFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD0AC93EBCDA8FFF2BFFFF6C3FFFFD9FFFFE9FFFFF8FFFF
        FFF4EECD7561618B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5B4A4FFF1C4FF
        E4B1FFF9C6FFFFDBFFFFEDFFFFFAFFFFF7FFFFDBC39B8A6C666EFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD0AC93FFF6CDFFDDAAFFF5C2FFFFD6FFFFE5FFFFEDFFFF
        E6FFFFD9D0AC936C666EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5B4A4FFF4C7FF
        E5B8FFEFBCFFFFCCFFFFD6FFFFDBFFFFD9FFFCD0D0AC936C666EFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD5B4A4FFF6CDFFF1D6FFE3B7FFF1BEFFF5C2FFF9C6FFF6
        C3FFF8C5B68D808B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAB39BECE0C3FF
        FFFFFFFAE8FFECBFFFDFACFFE3B0FFF0BDF5D2A99E7373FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFD5B4A4F4EECDFFFAE8FFF6CDFFEEBBFFF4C7F8D1
        A5BB928AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5
        B4A4D5B4A4CAA58EE1BBA3DAB39B8B8B8BFFFFFFFFFFFFFFFFFF}
      TabOrder = 14
      OnClick = btnPesqClienteClick
    end
    object BitBtn1: TBitBtn
      Left = 94
      Top = 56
      Width = 25
      Height = 25
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFF614F4F
        5E5E5E8B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF614F4F787599A883875E5E5E8B8B8BFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF65B8F4408CDB
        7F7AA5A883875E5E5E8B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF8294FF51B7FF408CDB7F7AA5A883875E5E5E8B8B8BFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8294FF
        51B7FF408CDB7F7AA5B087875E5E5E8B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8294FF55BBFF407DD27F7AA5A883876C
        666E6C666E6C666E6C666E6C666E8B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF8294FF51B7FF408CDB8B8B8B7B7B7BC49885D0AC93E3C9B1D5B4A47473
        736C666EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8294FF8294FFB08787F5
        D2A9FFF4C7FFFCD0FFFFDBFFFFDCFDF6E2A883876C666EFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD0AC93EBCDA8FFF2BFFFF6C3FFFFD9FFFFE9FFFFF8FFFF
        FFF4EECD7561618B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5B4A4FFF1C4FF
        E4B1FFF9C6FFFFDBFFFFEDFFFFFAFFFFF7FFFFDBC39B8A6C666EFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD0AC93FFF6CDFFDDAAFFF5C2FFFFD6FFFFE5FFFFEDFFFF
        E6FFFFD9D0AC936C666EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5B4A4FFF4C7FF
        E5B8FFEFBCFFFFCCFFFFD6FFFFDBFFFFD9FFFCD0D0AC936C666EFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD5B4A4FFF6CDFFF1D6FFE3B7FFF1BEFFF5C2FFF9C6FFF6
        C3FFF8C5B68D808B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAB39BECE0C3FF
        FFFFFFFAE8FFECBFFFDFACFFE3B0FFF0BDF5D2A99E7373FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFD5B4A4F4EECDFFFAE8FFF6CDFFEEBBFFF4C7F8D1
        A5BB928AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5
        B4A4D5B4A4CAA58EE1BBA3DAB39B8B8B8BFFFFFFFFFFFFFFFFFF}
      TabOrder = 15
      OnClick = BitBtn1Click
    end
    object edtEmissao: TMaskEdit
      Left = 121
      Top = 58
      Width = 70
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 289
    Width = 569
    Height = 191
    Align = alClient
    TabOrder = 2
    object dbgFinanceiro: TDBGrid
      Left = 1
      Top = 1
      Width = 567
      Height = 189
      Align = alClient
      DataSource = dtsAuxiliar
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object btnPesqCondPagto: TBitBtn
    Left = 67
    Top = 96
    Width = 25
    Height = 25
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FFFFFF614F4F
      5E5E5E8B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF614F4F787599A883875E5E5E8B8B8BFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF65B8F4408CDB
      7F7AA5A883875E5E5E8B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8294FF51B7FF408CDB7F7AA5A883875E5E5E8B8B8BFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8294FF
      51B7FF408CDB7F7AA5B087875E5E5E8B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8294FF55BBFF407DD27F7AA5A883876C
      666E6C666E6C666E6C666E6C666E8B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF8294FF51B7FF408CDB8B8B8B7B7B7BC49885D0AC93E3C9B1D5B4A47473
      736C666EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8294FF8294FFB08787F5
      D2A9FFF4C7FFFCD0FFFFDBFFFFDCFDF6E2A883876C666EFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFD0AC93EBCDA8FFF2BFFFF6C3FFFFD9FFFFE9FFFFF8FFFF
      FFF4EECD7561618B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5B4A4FFF1C4FF
      E4B1FFF9C6FFFFDBFFFFEDFFFFFAFFFFF7FFFFDBC39B8A6C666EFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFD0AC93FFF6CDFFDDAAFFF5C2FFFFD6FFFFE5FFFFEDFFFF
      E6FFFFD9D0AC936C666EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5B4A4FFF4C7FF
      E5B8FFEFBCFFFFCCFFFFD6FFFFDBFFFFD9FFFCD0D0AC936C666EFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFD5B4A4FFF6CDFFF1D6FFE3B7FFF1BEFFF5C2FFF9C6FFF6
      C3FFF8C5B68D808B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAB39BECE0C3FF
      FFFFFFFAE8FFECBFFFDFACFFE3B0FFF0BDF5D2A99E7373FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFD5B4A4F4EECDFFFAE8FFF6CDFFEEBBFFF4C7F8D1
      A5BB928AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5
      B4A4D5B4A4CAA58EE1BBA3DAB39B8B8B8BFFFFFFFFFFFFFFFFFF}
    TabOrder = 3
    OnClick = btnPesqCondPagtoClick
  end
  object dtsFinanceiro: TDataSource
    DataSet = qryFinanceiro
    Left = 678
    Top = 112
  end
  object qryFinanceiro: TFDQuery
    CachedUpdates = True
    Connection = DM_CREDIT.FDConexao
    SQL.Strings = (
      'select * from cliente')
    Left = 640
    Top = 112
  end
  object dtsCliente: TDataSource
    DataSet = qryCliente
    Left = 678
    Top = 56
  end
  object qryCliente: TFDQuery
    CachedUpdates = True
    Connection = DM_CREDIT.FDConexao
    SQL.Strings = (
      'select * from cliente')
    Left = 640
    Top = 56
  end
  object dtsAuxiliar: TDataSource
    DataSet = qryAuxiliar
    Left = 678
    Top = 168
  end
  object qryAuxiliar: TFDQuery
    CachedUpdates = True
    Connection = DM_CREDIT.FDConexao
    SQL.Strings = (
      'select * from cliente')
    Left = 640
    Top = 168
  end
  object dtsFornecedor: TDataSource
    DataSet = qryFornecedor
    Left = 678
    Top = 224
  end
  object qryFornecedor: TFDQuery
    CachedUpdates = True
    Connection = DM_CREDIT.FDConexao
    SQL.Strings = (
      'select * from cliente')
    Left = 640
    Top = 224
  end
end
