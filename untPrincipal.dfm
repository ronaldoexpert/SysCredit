object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 's'
  ClientHeight = 544
  ClientWidth = 950
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 950
    Height = 67
    ButtonHeight = 49
    ButtonWidth = 78
    Caption = 'ToolBar1'
    DrawingStyle = dsGradient
    EdgeInner = esLowered
    EdgeOuter = esRaised
    GradientEndColor = clWhite
    GradientStartColor = clGradientInactiveCaption
    TabOrder = 0
    object btnCliente: TSpeedButton
      Left = 0
      Top = 0
      Width = 81
      Height = 49
      Cursor = crHandPoint
      Align = alLeft
      BiDiMode = bdLeftToRight
      Caption = 'Cliente'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FEFEFEF7F7F7F5F5F5F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
        F6FCFCFCFFFFFFFFFFFFFFFFFFFEFEFEE0E0E0AEAEAE999B9AA4A6A5A6A7A6A5
        A6A6A5A6A6A5A6A6A5A6A69EA09F9B9C9CD1D1D1FCFCFCFFFFFFFFFFFFFCFCFC
        B6B6B6BDC0BFE1E4E4E1E4E4E3E6E6E5E7E7E5E7E7E4E6E6E2E5E5E1E4E4D3D6
        D6969796F4F4F4FFFFFFFFFFFFFEFEFEAEB0AFCCCECEE2E4E4E5E8E8E8EAEAEA
        ECECEAECECE9EBEBE6E9E9E3E6E6C6C8C8BFC2C1F3F3F3FFFFFFFFFFFFFFFFFF
        C8CACAD2D4D4E1E3E3EAEBEBEDEEEEEFF1F1F0F1F1EEF0F0EBEDEDE7E9E9D5D8
        D8DADCDCF0F0F0FFFFFFFFFFFFFFFFFFD1D3D2E3E5E5E2E4E4EDEEEEF1F2F2F4
        F5F5F5F6F6F3F4F4EFF0F0EAECECE4E6E6CED1D0FCFCFCFFFFFFFFFFFFFFFFFF
        E1E2E2E6E8E8E9EBEBEFF0F0EFF0F0E7E7E7E5E5E5EBECECF0F1F1EBEDEDE8EA
        EAD2D4D3FFFFFFFFFFFFFFFFFFFFFFFFFEFEFECACDCCEBECECE2E4E4BFC0C0A6
        A8A8A7A9A8B0B1B1D6D7D7EBEDEDD0D3D2F6F6F6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF7F7F7CACCCCB8BABABBBFBFD3D7D7D4D8D8CBCFCFB0B3B2C1C4C3ECED
        EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E5E5C3C7C6D2D6D6D4
        D8D8D5D8D8D4D8D8D3D7D7B1B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCCCFCED4D8D8D9DCDCDDE0E0DFE1E1DDE0E0D8DCDCC5C9C9F5F5
        F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C3C2D9DDDDE1E3E3E6
        E8E8E8EAEAE6E8E8E0E3E3D7DADAE5E7E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCCCECEDEE1E1E7E9E9EFF0F0F2F3F3EEF0F0E6E9E9D2D4D4F2F3
        F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBECEBD7D9D9EAECECF4
        F5F5FAFBFBF3F4F4EAECECC7CAC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD8DAD9D8DBDAF2F3F3F6F6F6EFF0F0C6CAC9F7F7F7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0D5
        D8D6D3D5D3DEE0DFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentBiDiMode = False
      OnClick = btnClienteClick
    end
    object ToolButton1: TToolButton
      Left = 81
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btnProduto: TSpeedButton
      Left = 89
      Top = 0
      Width = 96
      Height = 49
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Produtos'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        F9FAFAF0F1F1EFF0F0F0F0F0EFF0F0EFF0F0EFF0F0EFF0F0EFF0F0EFF0F0F0F1
        F1FAFBFBFFFFFFFFFFFFFFFFFFFEFEFEAAB3B96E94AC6C93AB6C93AB6B92AB69
        92AB6991AB6891AB6791AB6690AB688DA5CFD0D2FFFFFFFFFFFFFFFFFFFEFEFE
        7DA3BB6FB9EA6EB9EA6EB9EA6EB9EA6EB9EA6EB9EA6EB9EA6EB9EA6EB9EA78BD
        EBA3B6C2FFFFFFFFFFFFFFFFFFFFFFFF90BAD568AFDD68AFDD68AFDD68AFDD68
        AFDD68AFDD68AFDD68AFDD68AFDD78B7DFB8D1E1FFFFFFFFFFFFFFFFFFFFFFFF
        659CBF6196B86196B86096B86096B85F96B85F96B85F96B85E95B85E95B86498
        B994BCD6FFFFFFFFFFFFFFFFFFFFFFFF96BED7BFDBEBBBD9EBB7D8EBB3D6EBAF
        D4EBACD3EBA8D1EBA4D0EAA0CEEAA5D1ECA7C9DEFFFFFFFFFFFFFFFFFFFFFFFF
        A2C5DAD1E2ECCDE0ECC6DEEBC2DBEAC0DAEABEDBECBAD9ECB7D8ECB3D6EBBDDC
        EEBCD7E6FFFFFFFFFFFFFFFFFFFFFFFFA9C8DCA4AEC0BFB9C4A597A8C5C1CA8C
        7E8F69BDB460B9C25FB9C266BCC587C4C6D3E6EDFFFFFFFFFFFFFFFFFFFFFFFF
        CEDEE9979AAFB0A1AD8D7087D4CBD35757764AC9936DE1B567E0B158DEA44A9F
        A5FDFEFEFFFFFFFFFFFFFFFFFFFFFFFFFAFCFD7093AFCFC2CDAC93A7D6CCD559
        88B04CA0AE66A79696CAB08FC1A8A6C1C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        BAE0EA7EB0C5A58FA19D869A779BB1CAE6EDFFFFFFCAD8D6DEE2E1D8DCDBC1C7
        C5FFFFFFFFFFFFFFFFFFFFFFFFF6FCFD6BD1E147D4E9BBE2EB9EDDEB6EE4F4C8
        E8F0FFFFFFEAEFF0D1D4D3D0D4D3B1B6B4FFFFFFFFFFFFFFFFFFFFFFFFD0EDF3
        67D1E374CDDEFFFFFF9BDEEC63E1F2C3E9F2FFFFFFFFFFFFBEC1BFDEE1E1C9CD
        CCF0F1F0FFFFFFFFFFFFFFFFFFFFFFFFF0F9FBE1F4F8FFFFFF9AE0ED57DDEFC2
        EAF3FFFFFFFFFFFFCED0CFDDE0DFDEE1E1D9DBDAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9CE0ED7FE9F6C1EAF2FFFFFFFFFFFFE1E2E1F7F7F7EAEB
        EAD2D3D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8F2F7BEE8F1ED
        F9FBFFFFFFFFFFFFFCFCFCE1E2E2F0F1F1FFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      OnClick = btnProdutoClick
    end
    object btnFormaPagto: TSpeedButton
      Left = 185
      Top = 0
      Width = 96
      Height = 49
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Forma Pagto'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFDFDFDE1E3E2F4F6F5FAFAFAFBFBFBFFFFFFFFFFFF
        FDFDFDFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF8F8F8C5C8C6D1D8
        D5D4DAD7E2E3E2FFFFFFFFFFFFEDEDEDC7C7C7D6D6D6D6D6D6D5D5D5D5D5D5D0
        D0D0B4B5B5ABACABA6A9A8CCD3D0C8CECBB3B5B4EDEDEDFFFFFFFFFFFFE3E3E3
        C9C9C9BFBFBFC6C6C6BCBCBCBFBFBFA2A4A3CFD4D1D5DAD8CFD5D2CACFCDACAE
        ADC3C3C3E1E1E1FFFFFFFFFFFFE5E5E5E4E4E4D0D0D0DCDCDCCECECEB9BAB9E0
        E2E1C1C4C3D4DAD7D4DBD7B6B8B7D2D2D2DBDBDBE2E2E2FFFFFFFFFFFFE7E7E6
        F2F1F1B1B1B1AFAFAEB0B0B0BDBEBCB6B9B8D7D7D7B5B7B6DAE0DDC2C4C3E0E0
        E0E9E9E9E4E4E4FFFFFFFFFFFFE7E7E7F1EEECB6B2AE929292B8B4AFE2E0DDD8
        D9D8BEBEBEBBBEBDD9DDDBC0C1C0E0E0E0EBEBEBE5E5E5FFFFFFFFFFFFE7E7E6
        F1EBE6BEB4AB929292BEB4AAE8E2DCE5E5E5B0B2B2C8CAC9C7C8C7DBDBDBE3E3
        E3EDEDEDE6E6E6FFFFFFFFFFFFE7E7E6EFE6DDD8BBA1C6AF9AD7B99FE8DED4B4
        B4B48E8E8EA2A2A29696969A9A9AC8C8C8EFEFEFE6E6E6FFFFFFFFFFFFE8E7E7
        F5F1EDEBDED3EADDD1E9DCD0EFEBE7F1F1F1F0F0F0EFEFEFEDEDEDECECECEBEB
        EBF0F0F0E7E7E7FFFFFFFFFFFFFEFDFDDCDBDADEDCDBDEDDDCDEDDDCDEDEDDDE
        DEDEDEDEDEDEDEDEDEDEDEDEDEDEDDDDDDDCDCDCFDFDFDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      OnClick = btnFormaPagtoClick
    end
    object ToolButton2: TToolButton
      Left = 281
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object btnPedido: TSpeedButton
      Left = 289
      Top = 0
      Width = 81
      Height = 49
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Vendas'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFEFEFE
        FDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFE
        FEFEFEFEFFFFFFFFFFFFFFFFFF8E9DA77896A77896A77795A77795A77794A776
        94A67694A67593A57593A57593A47592A481909AFCFCFCFFFFFFFFFFFFB8BAB9
        DADFDDDAE0DDDAE0DDDBE0DEDCE1DEDCE1DFDDE2E0DEE2E0DEE2E0DEE2E0DEE1
        E0ABADACFFFFFFFFFFFFFFFFFFC5C6C5F3F4F4F4F5F5F5F6F6F7F7F7F8F9F9FA
        FAFAFBFBFBFCFCFCFBFBFBF9F9F9F8F9F9C1C2C2FFFFFFFFFFFFFFFFFFCBCCCB
        EDEFEEE2E4E4EAEBEBE4E5E5F3F4F4CACECF7999B09BBED9C9CCD0E2E2E2EEEF
        EFBCBCBBFDFDFDFEFEFEFFFFFFDDDEDDEFF0F0E9EAEAE3E5E4F0F2F2E4E6E5EE
        EFEFB4D7F07EC3F74E8ED3C2C6CAE5E5E5D8DADBFFFFFFFFFFFFFFFFFFDEDFDF
        F1F2F2E7E9E8E5E6E6E3E5E5EBECECF6F7F7D3E1F252A4ED45AAF65F9EE4EFF2
        F6D5DADDFFFFFFFFFFFFFFFFFFE2E2E2F2F3F3E0E2E1E8E9E9E8E9E9E4E5E5EF
        F0F0EBECECD1DFF052A4ED45AAF65F9EE5D2DCE4FFFFFFFFFFFFFFFFFFECEDEC
        EFF0F0DEE0E0DFE0E0E6E8E8E7E8E8E3E4E4E9EAEAE8E9E9C0CFE051A3EC45AA
        F666A2E5F9FCFEFFFFFFFFFFFFF3F3F3E7E9E9E3E5E5DEE0E0E6E7E7E6E8E8E0
        E2E1F0F2F2F1F2F2F1F2F2CDDCED51A3ED45AAF662A0E5F8FBFEFFFFFFF8F8F8
        DCDEDDDCDEDEDCDEDEE3E5E5E4E6E5DDE0DFE4E5E5E4E7E6E4E6E6DEE0E0C0CF
        E0519FE64BADF68CB9ECFFFFFFFDFDFDD7D9D9BCBEBDCED0CFD2D3D3CED0D0BC
        BEBDCED0CFD2D3D3CED1D0BCBEBDDADBDBE4EDF578AFE9E6F0FBFFFFFFFFFFFF
        D7D8D8C9CCCAD5D7D6C4C6C5D1D2D2C9CCCAD5D7D6C4C6C5D1D3D2C9CCCAD4D7
        D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF0F0F3F4F3F9F9F9F3F4F3EF
        F0F0F3F4F3F9F9F9F3F4F4EFF0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      OnClick = btnPedidoClick
    end
    object btnFinanceiro: TSpeedButton
      Left = 370
      Top = 0
      Width = 81
      Height = 49
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Financeiro'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFE5EEE9
        ADCBBBACCABAB0C7BCB2BBB6B1B7B4AFBFB6B0BFB7ADC2B8F2F3F3F6F7F8F8FA
        FAFEFEFEFFFFFFFFFFFFFCFDFDABC1B604844204844204844293979593979504
        844204844203773B9BB4B81089A004859E62A1AEF6F8F8FEFEFE97B3A43D8360
        036D36036D36036D36AAAFADAAAFAD036D36036D360268335795A1009EB700A3
        BC0087A0108BA1AAC5CA5B9A7A036E36239F5F17A45B199C5891A19990A09819
        9C58179E5840996B4594A20091AB008CA60090AA009EB864ACBA62A281188F53
        1A874F148249189353638573608471188D5018894E7FB29860ACBC27A8BF30B0
        C50A8CA50091AB62B5C5CCE1D61A935604994D127643BAC2BE3F785B059D4F0C
        8E4C6AA286C7CBCA77B0BA6FE2F16DE8F746B6C9009EB862B1C1FFFFFF86B69E
        539E78559E7A8D9792659A805AA6805DA9839CB9AACED4D1D3DBD997BBC00786
        9F008BA50091AB62B6C6FFFFFFFDFEFDBABCBCA69B8FCBD1CFCFD5D3C7CECBCD
        D4D1C6CECAC7CECBCFD5D3CAD1CE0B8DA500A3BD009EB865B4C4FFFFFFFEFEFE
        BABCBCC0BCB5CBC4BCDFE4E2D1D5D2BFAFA0C7C4BCD0D6D3DAE0DDD2D7D533A6
        BB4FC2D44BBFD272BCCAFFFFFFFEFEFEBABCBCC8CDCBC5B7ABC8BDB3C3B5A8D4
        D6D3B4A799C9CFCDD2D7D5CCD2D078BCC853C2D458BECFB3D9E1FFFFFFFEFEFE
        BABCBCC9CECCD7DAD7D5D5D0D6DBD9DCE0DECDCDC7C6C7C2D3D9D7CED4D2D7DC
        DAB8BCBCFFFFFFFFFFFFFFFFFFFEFEFEBABCBCCFD3D2E0E3E2E6EAE9DEE2E0E7
        EAE9DEE2E0D9DCD9E0E5E3D7DCDAE2E6E5BABCBCFFFFFFFFFFFFFFFFFFFEFEFE
        BABCBCCCD0CFDDE1DFE0E4E3DBDFDDE0E4E2DBDFDDDBDFDEDDE1E0D4D9D7DBDF
        DEBABCBCFFFFFFFFFFFFFFFFFFFEFEFEBABCBCD1D4D3E4E7E6EAECECE2E6E5EA
        EDECE2E6E5E3E6E5EAECECE2E5E4E7EAE9BABCBCFFFFFFFFFFFFFFFFFFFFFFFF
        B3B6B5ECEEEEECEEEEECEEEEECEEEEECEEEEECEEEEECEEEEECEEEEECEEEEECEE
        EEB3B6B5FFFFFFFFFFFFFFFFFFFFFFFFE7E8E8D5D6D6D7D8D8D8D9D8D8D9D8D8
        D9D8D8D9D8D8D9D8D8D9D8D8D9D8D6D7D7E9E9E9FFFFFFFFFFFF}
      Layout = blGlyphTop
      OnClick = btnFinanceiroClick
    end
    object btnBaixaConsulta: TSpeedButton
      Left = 451
      Top = 0
      Width = 103
      Height = 49
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Baixar / Consultar'
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
      Layout = blGlyphTop
      OnClick = btnBaixaConsultaClick
    end
    object ToolButton3: TToolButton
      Left = 554
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object btnBackup: TSpeedButton
      Left = 562
      Top = 0
      Width = 96
      Height = 49
      BiDiMode = bdLeftToRight
      Caption = 'Backup'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F7F5FFEAE6E0FFE4DED7FFE2DDD6FFE5E0
        DCFFEAE8E5FFF7F6F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF2F2F2FFCAC9C6FF7D6F5BFF523B1DFF442E11FF4838
        23FF7E776DFFDAD9D9FFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFC3AF8DFF70460CFF6F4204FF6A3F06FF613907FF5837
        0BFF4A2F0BFF3F2C13FFBCB8B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC6B179FF815606FF865507FF7F4E07FF704104FF2D1804FF2519
        0DFF25190EFF25190EFF27190AFFA8A49CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEADFB8FF9C7811FFA17315FF986614FF966828FFF1F0F0FFFFFFFFFFA19D
        97FF23160BFF24170DFF24170DFF211409FFDAD9D7FFFFFFFFFFFFFEFBFFF5F3
        E2FFC4AB34FFB8941EFFAD811AFF9A6A15FFC5B297FFF0EDE8FFFFFFFFFFFFFF
        FFFF5B524CFF21160CFF20150CFF20150CFF5B534CFFFFFFFFFFFEFEF9FFE1D1
        54FFD2BA3EFFC8A62EFFB68C22FF9E7119FF825511FFE1D7CAFFFFFFFFFFFFFF
        FFFFA19C99FF1B1109FF1A1C11FF1B1008FF1A1009FFF1F1F0FFFFFFFFFFB8BB
        B9FFBCA839FFD4BA48FFBE972EFFA4771CFFDBD1BDFFFFFFFFFFFFFFFFFFFFFF
        FFFFBAB7B5FF161D12FF08A66FFF104D32FF120802FFDEDDDBFFFFFFFFFFB2B6
        B5FF000403FFB49F3DFFC5A33EFF251F07FFDADCDBFFFFFFFFFFFFFFFFFFFFFF
        FFFFB1C7BEFF26AD7EFF1CC388FF0BBA7DFF084A30FFDCDAD9FFFFFFFFFFD0D3
        D2FF030D09FF030E0CFF2B2D0FFF04110CFFCCCFCDFFFFFFFFFFFFFFFFFFCDEA
        E0FF25A276FF34BA8BFF3DC999FF0BC684FF08BB7CFF8BDABDFFFFFFFFFFF9FA
        FAFF182822FF081812FF081912FF071A12FF9DA4A2FFFFFFFFFFFFFFFFFFD5EE
        E5FF7BCFB2FF31B889FF3CC595FF0BBC7FFF32D098FFC4F4E4FFFFFFFFFFFFFF
        FFFF8F9995FF081C14FF0A1E16FF0A1F17FF1F332CFFF9FAF9FFFFFFFFFFFBFD
        FCFF2CAA7EFF24B080FF28B987FF0AB277FFC1F1E0FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF3F564DFF0A2218FF0B2319FF0C241AFF0B251AFF446156FF1884
        5FFF129969FF19A876FF1BB37FFF79DEBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF57776CFF043927FF03412BFF045538FF05714BFF0A87
        5BFF109467FF17A775FF8CDEC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD5E0DCFF79A395FF3E876DFF2E8C6BFF3FA0
        7EFF82CAB1FFDFF4EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFEFDFFFEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentBiDiMode = False
      OnClick = btnBackupClick
    end
    object ToolButton4: TToolButton
      Left = 658
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object btnSair: TSpeedButton
      Left = 666
      Top = 0
      Width = 81
      Height = 49
      Cursor = crHandPoint
      Align = alLeft
      Caption = '&Sair'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEF7F7F7EFEFEFE5E5E5E7E8E8F0F0F0F8F8F8FEFEFEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9BFC0C0A0A4A2BBC1BFC1
        C6C4B8BEBCA5AAA89A9D9CD7D7D7FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F3F4F49A9E9DBAC0C0E6E7E7DCDDDDD4D4D4D4D4D4D7D8D8D3D7D7A9B0AFAEAF
        AFFAFAFAFFFFFFFFFFFFFFFFFFFBFBFB9BA09ED1D5D5D2D3D3C2C2C2C3C3C3C3
        C3C3C2C2C2C1C1C1C4C4C4D7D9D9C5C9C9AFB1B0FDFDFDFFFFFFFFFFFFB6B8B7
        D5D8D8CECECEC5C5C5C7C7C7C9C9C9C9C9C9C9C9C9C7C7C7C4C4C4C1C1C1D8D8
        D8BFC4C3DFDFDFFFFFFFFCFCFCB2B7B5D7D8D8C7C7C7CACACACDCDCDC6C6C6AC
        ADACB4B5B5CCCCCCCACACAC6C6C6C2C2C2E1E2E2A2A6A4FEFEFEDEDFDFDBDEDD
        CACACACBCBCBCECECEA8A9A95C605E727674666A686F7271C4C5C4CBCBCBC6C6
        C6D3D3D3B9BDBBFCFCFCD5D8D7E3E4E4CACACACECECEC5C7C65C5F5EB8BBBACE
        D1D1CED0D0898C8B808382CDCDCDC9C9C9C9C9C9CDD1D0F0F0F0D5D8D7E1E1E1
        CCCCCCCFD0D0A3A5A57C807FCDD1D1CDD1D1CDD1D1C5C8C85A5E5CCFD0D0CBCB
        CBC6C6C6D2D5D4EFEFEFDBDDDCDDDEDECECECECFD1D1A6A9A8777B7ACCD1D182
        8685B2B6B5BCBFBF606362D0D0D0CDCDCDC9C9C9C4C8C6FBFBFBF5F6F6C2C6C5
        CECECECFD1D1C8CBCB6064629BA09F757A789DA1A06C706E949796D0D1D1CDCD
        CDCCCCCCBEC2C0FFFFFFFFFFFFBCC1BED1D1D1CFD0D0CED1D1BCBFBF96999975
        7A78979A99999C9CCED0D0CFD0D0CCCCCCCDCFCEDBDDDCFFFFFFFFFFFFF2F3F3
        BDC1C0D3D4D4CFD1D1CED1D1CED1D1A9ACABC3C6C5CED1D1CFD1D1CFCFCFD4D4
        D4B7BDBBFFFFFFFFFFFFFFFFFFFFFFFFE5E7E6C0C4C3D8D9D9CFD1D1CFD1D1CF
        D1D1CFD1D1CFD1D1D0D0D0DADBDBB4B9B7F8F8F8FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEFF0F0B9BEBCD0D3D2DEDFDFDADADADBDBDBDCDDDDC0C5C3C3C7C5FBFC
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF0F0D8DAD9CA
        CECCCDD0CFDBDDDCF8F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      OnClick = btnSairClick
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 67
    Width = 950
    Height = 414
    Align = alClient
    Color = clBtnHighlight
    ParentBackground = False
    TabOrder = 1
    object lblStatusCaixa: TLabel
      Left = 6
      Top = 6
      Width = 130
      Height = 25
      Caption = 'lblStatusCaixa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = 25
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Memo1: TMemo
      Left = 760
      Top = 232
      Width = 165
      Height = 109
      Enabled = False
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
      Visible = False
    end
    object grpRelatorioFinanceiro: TGroupBox
      Left = 6
      Top = 46
      Width = 281
      Height = 259
      Caption = 'Relat'#243'rio Financeiro'
      TabOrder = 1
      object lblAte: TLabel
        Left = 124
        Top = 27
        Width = 17
        Height = 13
        Caption = 'At'#233
      end
      object lblCodCliente: TLabel
        Left = 211
        Top = 87
        Width = 33
        Height = 13
        Caption = 'Cliente'
      end
      object rdTipos: TRadioGroup
        Left = 16
        Top = 49
        Width = 252
        Height = 32
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Emiss'#227'o'
          'Vencimento'
          'Pagamento')
        TabOrder = 0
      end
      object edtDtInicio: TDateTimePicker
        Left = 37
        Top = 22
        Width = 81
        Height = 21
        Date = 44726.000000000000000000
        Time = 0.614636724538286200
        TabOrder = 1
      end
      object edtDtFim: TDateTimePicker
        Left = 152
        Top = 22
        Width = 81
        Height = 21
        Date = 44726.000000000000000000
        Time = 0.614636724538286200
        TabOrder = 2
      end
      object btnImprimir: TBitBtn
        Left = 152
        Top = 218
        Width = 116
        Height = 29
        Caption = '&Imprimir'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000000000000000
          0000000000000000000000000000000000000202020101010001010001010000
          000000000000000000000000000000000000000000000000001D1D1D5C5C5C40
          4040464645ACADADAEA8A4A29E9CB8B9BA636363000000000000000000000000
          0808083D3D3D8A8A8AD6D6D6F3F3F3979797959595F3F6F7D79B74C18F6EFFFF
          FF969696000000000000494949646464B1B1B1EDEDEDFFFFFFFFFFFFF1F1F19B
          9B9B979B9EDABFAAB8560FB4530BD8C4B59EA1A30A0A0A000000909090E9E9E9
          FFFFFFFDFDFDF0F0F0DFDFDFCECECE9293949F948BBE671ED4A177D59055C375
          2F9F9C9A6667680C0C0C8F8F8FE6E6E6EDEDEDDFDFDFD9D9D9DEDEDEDDDDDDB2
          B5B8BE814CBC6F28BCBAB8B9AC9FC96C0FA9743F8183861213138D8D8DD5D5D5
          E6E6E6E5E5E5E5E5E5E0E0E0DDDDDDD4D6D8D7B390C2B09FA8ABAD9FA2A5C29B
          75DE790CA17F5716181A8F8F8FDBDBDBE7E7E7DFDFDFDCDCDCDDDDDDEBEBEBEE
          EDEDEAEAEAE0E1E2D4D4D4C1C0C28CB998BFA23FE5840B2D1F0C969696D3D3D3
          DFDFDFDDDDDDC5C5C6C1C2C3D9D9DAE9EAE9F2F2F2F2F2F2F0F0F0E5E2E484C7
          948ACE8BF1A8403B2100303030787878B7B7B7C9C9CAB0A79EAA9D8F99938C9A
          9896A8AAABC5C7C8E1E1E1F4F4F4EBE8EBADAFB474603C2C1C00000000070707
          20201F3B3C3DD4C4B3FFE8CBF6D9BCE4C9AECDB69EAC9E8EA8A7A5B4B4B46F6F
          6F202020020202000000000000000000000000595857EFE0D0FFEBD7FFE7CFFF
          E6CBFFE6C7F3D8B9403B37131414050505000000000000000000000000000000
          0707079A9894FFF6EAFEF0E2FEEDDBFEEAD6FFECD4D3C1AE1615140000000000
          00000000000000000000000000000000505150EBEBE9FFFEF9FFF7EFFEF4E9FF
          F1E4FFF4E47C766F000000000000000000000000000000000000000000696969
          BBBBBBF3F3F3F6F6F6FEFEFDFFFFFBFFFFFAC3BEB71819180000000000000000
          000000000000000000000000002C2C2C2D2D2D282828595A5A7474749D9D9DAC
          ABAB353435000000000000000000000000000000000000000000}
        TabOrder = 3
        OnClick = btnImprimirClick
      end
      object mmoClientes: TMemo
        Left = 16
        Top = 87
        Width = 189
        Height = 125
        Enabled = False
        Lines.Strings = (
          'Memo1')
        TabOrder = 4
      end
      object edtCliente: TEdit
        Left = 211
        Top = 106
        Width = 57
        Height = 21
        TabOrder = 5
      end
    end
  end
  object ToolBar2: TToolBar
    Left = 0
    Top = 481
    Width = 950
    Height = 63
    Align = alBottom
    Caption = 'ToolBar2'
    TabOrder = 2
  end
  object FDIBBackup1: TFDIBBackup
    DriverLink = FDPhysFBDriverLink1
    OnProgress = FDIBBackup1Progress
    Verbose = True
    Left = 368
    Top = 121
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'fbclient.dll'
    Left = 416
    Top = 120
  end
  object Crpe1: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Crpe.Major = 0
    Version.Crpe.Minor = 0
    Version.Crpe.Release = 0
    Version.Crpe.Build = 0
    Version.Report.Major = 0
    Version.Report.Minor = 0
    Version.Report.Letter = #0
    Version.Windows.Platform = 'NT'
    Version.Windows.Major = 10
    Version.Windows.Minor = 0
    Version.Windows.Build = '19044'
    TempPath = 'C:\Users\Ronaldo\AppData\Local\Temp\'
    PrintDate.Day = 0
    PrintDate.Month = 0
    PrintDate.Year = 0
    Subreports.Number = 0
    Subreports.Item.Top = -1
    Subreports.Item.Left = -1
    Subreports.Item.Width = -1
    Subreports.Item.Height = -1
    Subreports.Item.Border.Left = lsNone
    Subreports.Item.Border.Right = lsNone
    Subreports.Item.Border.Top = lsNone
    Subreports.Item.Border.Bottom = lsNone
    Subreports.Item.Border.TightHorizontal = False
    Subreports.Item.Border.DropShadow = False
    Subreports.Item.Border.ForeColor = clNone
    Subreports.Item.Border.BackgroundColor = clNone
    Subreports.Item.NLinks = 0
    GroupSortFields.Number = -1
    Groups.Number = -1
    Groups.Item.CustomizeGroupName = False
    ParamFields.AllowDialog = True
    ParamFields.Item.Top = -1
    ParamFields.Item.Left = -1
    ParamFields.Item.Width = -1
    ParamFields.Item.Height = -1
    ParamFields.Item.Border.Left = lsNone
    ParamFields.Item.Border.Right = lsNone
    ParamFields.Item.Border.Top = lsNone
    ParamFields.Item.Border.Bottom = lsNone
    ParamFields.Item.Border.TightHorizontal = False
    ParamFields.Item.Border.DropShadow = False
    ParamFields.Item.Border.ForeColor = clNone
    ParamFields.Item.Border.BackgroundColor = clNone
    ParamFields.Item.Format.Alignment = haDefault
    ParamFields.Item.Format.SuppressIfDuplicated = False
    ParamFields.Item.Format.CanGrow = False
    ParamFields.Item.Format.MaxNLines = 0
    ParamFields.Item.Format.Field.Number.CurrencySymbol = '$'
    ParamFields.Item.Format.Field.Number.ThousandSymbol = ','
    ParamFields.Item.Format.Field.Number.DecimalSymbol = '.'
    ParamFields.Item.Format.Field.Number.ShowZeroValueAs = '0'
    ParamFields.Item.Format.Field.Date.FirstSeparator = '/'
    ParamFields.Item.Format.Field.Date.SecondSeparator = '/'
    ParamFields.Item.Format.Field.Time.AMString = 'AM'
    ParamFields.Item.Format.Field.Time.PMString = 'PM'
    ParamFields.Item.Format.Field.Time.HourMinSeparator = ':'
    ParamFields.Item.Format.Field.Time.MinSecSeparator = ':'
    ParamFields.Item.Format.Field.Paragraph.LineSpacing = 1.000000000000000000
    ParamFields.Item.Font.Charset = DEFAULT_CHARSET
    ParamFields.Item.Font.Color = clWindowText
    ParamFields.Item.Font.Height = -11
    ParamFields.Item.Font.Name = 'Tahoma'
    ParamFields.Item.Font.Style = []
    ParamFields.Item.HiliteConditions.Item.FontColor = clNone
    ParamFields.Item.HiliteConditions.Item.Background = clNone
    ParamFields.Item.ParamType = pfNoValue
    ParamFields.Item.ParamSource = psReport
    ParamFields.Item.Info.AllowNull = True
    ParamFields.Item.Info.AllowEditing = True
    ParamFields.Item.Info.AllowMultipleValues = False
    ParamFields.Item.Info.ValueType = vtDiscrete
    ParamFields.Item.Info.PartOfGroup = False
    ParamFields.Item.Info.MutuallyExclusiveGroup = True
    ParamFields.Item.Info.GroupNum = -1
    ParamFields.Item.ValueLimit = False
    ParamFields.Item.Ranges.Item.Bounds = IncludeStartAndEnd
    ParamFields.Item.NeedsCurrentValue = False
    ParamFields.Item.IsLinked = False
    Formulas.Item.Top = -1
    Formulas.Item.Left = -1
    Formulas.Item.Width = -1
    Formulas.Item.Height = -1
    Formulas.Item.Border.Left = lsNone
    Formulas.Item.Border.Right = lsNone
    Formulas.Item.Border.Top = lsNone
    Formulas.Item.Border.Bottom = lsNone
    Formulas.Item.Border.TightHorizontal = False
    Formulas.Item.Border.DropShadow = False
    Formulas.Item.Border.ForeColor = clNone
    Formulas.Item.Border.BackgroundColor = clNone
    Formulas.Item.Format.Alignment = haDefault
    Formulas.Item.Format.SuppressIfDuplicated = False
    Formulas.Item.Format.CanGrow = False
    Formulas.Item.Format.MaxNLines = 0
    Formulas.Item.Format.Field.Number.CurrencySymbol = '$'
    Formulas.Item.Format.Field.Number.ThousandSymbol = ','
    Formulas.Item.Format.Field.Number.DecimalSymbol = '.'
    Formulas.Item.Format.Field.Number.ShowZeroValueAs = '0'
    Formulas.Item.Format.Field.Date.FirstSeparator = '/'
    Formulas.Item.Format.Field.Date.SecondSeparator = '/'
    Formulas.Item.Format.Field.Time.AMString = 'AM'
    Formulas.Item.Format.Field.Time.PMString = 'PM'
    Formulas.Item.Format.Field.Time.HourMinSeparator = ':'
    Formulas.Item.Format.Field.Time.MinSecSeparator = ':'
    Formulas.Item.Format.Field.Paragraph.LineSpacing = 1.000000000000000000
    Formulas.Item.Font.Charset = DEFAULT_CHARSET
    Formulas.Item.Font.Color = clWindowText
    Formulas.Item.Font.Height = -11
    Formulas.Item.Font.Name = 'Tahoma'
    Formulas.Item.Font.Style = []
    Formulas.Item.HiliteConditions.Item.FontColor = clNone
    Formulas.Item.HiliteConditions.Item.Background = clNone
    AreaFormat.Item.NSections = 0
    SectionSize.Item.Height = -1
    SectionSize.Item.Width = -1
    SQLExpressions.Item.Top = -1
    SQLExpressions.Item.Left = -1
    SQLExpressions.Item.Width = -1
    SQLExpressions.Item.Height = -1
    SQLExpressions.Item.Border.Left = lsNone
    SQLExpressions.Item.Border.Right = lsNone
    SQLExpressions.Item.Border.Top = lsNone
    SQLExpressions.Item.Border.Bottom = lsNone
    SQLExpressions.Item.Border.TightHorizontal = False
    SQLExpressions.Item.Border.DropShadow = False
    SQLExpressions.Item.Border.ForeColor = clNone
    SQLExpressions.Item.Border.BackgroundColor = clNone
    SQLExpressions.Item.Format.Alignment = haDefault
    SQLExpressions.Item.Format.SuppressIfDuplicated = False
    SQLExpressions.Item.Format.CanGrow = False
    SQLExpressions.Item.Format.MaxNLines = 0
    SQLExpressions.Item.Format.Field.Number.CurrencySymbol = '$'
    SQLExpressions.Item.Format.Field.Number.ThousandSymbol = ','
    SQLExpressions.Item.Format.Field.Number.DecimalSymbol = '.'
    SQLExpressions.Item.Format.Field.Number.ShowZeroValueAs = '0'
    SQLExpressions.Item.Format.Field.Date.FirstSeparator = '/'
    SQLExpressions.Item.Format.Field.Date.SecondSeparator = '/'
    SQLExpressions.Item.Format.Field.Time.AMString = 'AM'
    SQLExpressions.Item.Format.Field.Time.PMString = 'PM'
    SQLExpressions.Item.Format.Field.Time.HourMinSeparator = ':'
    SQLExpressions.Item.Format.Field.Time.MinSecSeparator = ':'
    SQLExpressions.Item.Format.Field.Paragraph.LineSpacing = 1.000000000000000000
    SQLExpressions.Item.Font.Charset = DEFAULT_CHARSET
    SQLExpressions.Item.Font.Color = clWindowText
    SQLExpressions.Item.Font.Height = -11
    SQLExpressions.Item.Font.Name = 'Tahoma'
    SQLExpressions.Item.Font.Style = []
    SQLExpressions.Item.HiliteConditions.Item.FontColor = clNone
    SQLExpressions.Item.HiliteConditions.Item.Background = clNone
    LogOnInfo.Item.Table = -1
    SessionInfo.Table = -1
    SessionInfo.Item.Propagate = True
    ExportOptions.Excel.Constant = 36.000000000000000000
    ExportOptions.Excel.WorksheetFunctions = False
    ExportOptions.Excel.FirstPage = 1
    ExportOptions.Excel.LastPage = 1
    ExportOptions.HTML.PageNavigator = True
    ExportOptions.HTML.SeparatePages = True
    ExportOptions.HTML.FirstPage = 1
    ExportOptions.HTML.LastPage = 1
    ExportOptions.RTF.FirstPage = 1
    ExportOptions.RTF.LastPage = 1
    ExportOptions.Word.FirstPage = 1
    ExportOptions.Word.LastPage = 1
    ExportOptions.PDF.FirstPage = 1
    ExportOptions.PDF.LastPage = 1
    ExportOptions.Text.StringDelimiter = '"'
    ExportOptions.Text.FieldSeparator = ','
    Lines.Item.LineStyle = lsNone
    Lines.Item.Left = -1
    Lines.Item.Right = -1
    Lines.Item.Width = -1
    Lines.Item.Top = -1
    Lines.Item.Bottom = -1
    Lines.Item.Color = clNone
    Lines.Item.Extend = False
    Lines.Item.Suppress = False
    Boxes.Number = -1
    Pictures.Item.Top = -1
    Pictures.Item.Left = -1
    Pictures.Item.Width = -1
    Pictures.Item.Height = -1
    Pictures.Item.Border.Left = lsNone
    Pictures.Item.Border.Right = lsNone
    Pictures.Item.Border.Top = lsNone
    Pictures.Item.Border.Bottom = lsNone
    Pictures.Item.Border.TightHorizontal = False
    Pictures.Item.Border.DropShadow = False
    Pictures.Item.Border.ForeColor = clNone
    Pictures.Item.Border.BackgroundColor = clNone
    Pictures.Item.CropLeft = -1
    Pictures.Item.CropRight = -1
    Pictures.Item.CropTop = -1
    Pictures.Item.CropBottom = -1
    TextObjects.Item.Top = -1
    TextObjects.Item.Left = -1
    TextObjects.Item.Width = -1
    TextObjects.Item.Height = -1
    TextObjects.Item.Border.Left = lsNone
    TextObjects.Item.Border.Right = lsNone
    TextObjects.Item.Border.Top = lsNone
    TextObjects.Item.Border.Bottom = lsNone
    TextObjects.Item.Border.TightHorizontal = False
    TextObjects.Item.Border.DropShadow = False
    TextObjects.Item.Border.ForeColor = clNone
    TextObjects.Item.Border.BackgroundColor = clNone
    TextObjects.Item.Format.Alignment = haDefault
    TextObjects.Item.Format.SuppressIfDuplicated = False
    TextObjects.Item.Format.CanGrow = False
    TextObjects.Item.Format.MaxNLines = 0
    TextObjects.Item.Format.Paragraph.LineSpacing = 1.000000000000000000
    TextObjects.Item.Font.Charset = DEFAULT_CHARSET
    TextObjects.Item.Font.Color = clWindowText
    TextObjects.Item.Font.Height = -11
    TextObjects.Item.Font.Name = 'Tahoma'
    TextObjects.Item.Font.Style = []
    TextObjects.Item.Paragraphs.Item.Alignment = haDefault
    TextObjects.Item.Paragraphs.Item.IndentFirstLine = 0
    TextObjects.Item.Paragraphs.Item.IndentLeft = 0
    TextObjects.Item.Paragraphs.Item.IndentRight = 0
    TextObjects.Item.Paragraphs.Item.TextStart = 0
    TextObjects.Item.Paragraphs.Item.TextEnd = 0
    TextObjects.Item.Paragraphs.Item.TabStops.Item.Alignment = haDefault
    TextObjects.Item.Paragraphs.Item.TabStops.Item.Offset = -1
    TextObjects.Item.EmbeddedFields.Item.FieldObjectType = oftNone
    TextObjects.Item.EmbeddedFields.Item.FieldType = fvUnknown
    TextObjects.Item.EmbeddedFields.Item.TextStart = 0
    TextObjects.Item.EmbeddedFields.Item.TextEnd = 0
    TextObjects.Item.EmbeddedFields.Item.Format.Alignment = haDefault
    TextObjects.Item.EmbeddedFields.Item.Format.SuppressIfDuplicated = False
    TextObjects.Item.EmbeddedFields.Item.Format.CanGrow = False
    TextObjects.Item.EmbeddedFields.Item.Format.MaxNLines = 0
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Number.CurrencySymbol = '$'
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Number.ThousandSymbol = ','
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Number.DecimalSymbol = '.'
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Number.ShowZeroValueAs = '0'
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Date.FirstSeparator = '/'
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Date.SecondSeparator = '/'
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Time.AMString = 'AM'
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Time.PMString = 'PM'
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Time.HourMinSeparator = ':'
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Time.MinSecSeparator = ':'
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Paragraph.LineSpacing = 1.000000000000000000
    TextObjects.Item.EmbeddedFields.Item.Border.Left = lsNone
    TextObjects.Item.EmbeddedFields.Item.Border.Right = lsNone
    TextObjects.Item.EmbeddedFields.Item.Border.Top = lsNone
    TextObjects.Item.EmbeddedFields.Item.Border.Bottom = lsNone
    TextObjects.Item.EmbeddedFields.Item.Border.TightHorizontal = False
    TextObjects.Item.EmbeddedFields.Item.Border.DropShadow = False
    TextObjects.Item.EmbeddedFields.Item.Border.ForeColor = clNone
    TextObjects.Item.EmbeddedFields.Item.Border.BackgroundColor = clNone
    TextObjects.Item.TextSize = -1
    TextObjects.Item.TextHeight = -1
    OleObjects.Item.Top = -1
    OleObjects.Item.Left = -1
    OleObjects.Item.Width = -1
    OleObjects.Item.Height = -1
    OleObjects.Item.Border.Left = lsNone
    OleObjects.Item.Border.Right = lsNone
    OleObjects.Item.Border.Top = lsNone
    OleObjects.Item.Border.Bottom = lsNone
    OleObjects.Item.Border.TightHorizontal = False
    OleObjects.Item.Border.DropShadow = False
    OleObjects.Item.Border.ForeColor = clNone
    OleObjects.Item.Border.BackgroundColor = clNone
    CrossTabs.Item.Top = -1
    CrossTabs.Item.Left = -1
    CrossTabs.Item.Width = -1
    CrossTabs.Item.Height = -1
    CrossTabs.Item.Border.Left = lsNone
    CrossTabs.Item.Border.Right = lsNone
    CrossTabs.Item.Border.Top = lsNone
    CrossTabs.Item.Border.Bottom = lsNone
    CrossTabs.Item.Border.TightHorizontal = False
    CrossTabs.Item.Border.DropShadow = False
    CrossTabs.Item.Border.ForeColor = clNone
    CrossTabs.Item.Border.BackgroundColor = clNone
    Maps.Item.Top = -1
    Maps.Item.Left = -1
    Maps.Item.Width = -1
    Maps.Item.Height = -1
    Maps.Item.Border.Left = lsNone
    Maps.Item.Border.Right = lsNone
    Maps.Item.Border.Top = lsNone
    Maps.Item.Border.Bottom = lsNone
    Maps.Item.Border.TightHorizontal = False
    Maps.Item.Border.DropShadow = False
    Maps.Item.Border.ForeColor = clNone
    Maps.Item.Border.BackgroundColor = clNone
    OLAPCubes.Item.Top = -1
    OLAPCubes.Item.Left = -1
    OLAPCubes.Item.Width = -1
    OLAPCubes.Item.Height = -1
    OLAPCubes.Item.Border.Left = lsNone
    OLAPCubes.Item.Border.Right = lsNone
    OLAPCubes.Item.Border.Top = lsNone
    OLAPCubes.Item.Border.Bottom = lsNone
    OLAPCubes.Item.Border.TightHorizontal = False
    OLAPCubes.Item.Border.DropShadow = False
    OLAPCubes.Item.Border.ForeColor = clNone
    OLAPCubes.Item.Border.BackgroundColor = clNone
    DatabaseFields.Item.Top = -1
    DatabaseFields.Item.Left = -1
    DatabaseFields.Item.Width = -1
    DatabaseFields.Item.Height = -1
    DatabaseFields.Item.Border.Left = lsNone
    DatabaseFields.Item.Border.Right = lsNone
    DatabaseFields.Item.Border.Top = lsNone
    DatabaseFields.Item.Border.Bottom = lsNone
    DatabaseFields.Item.Border.TightHorizontal = False
    DatabaseFields.Item.Border.DropShadow = False
    DatabaseFields.Item.Border.ForeColor = clNone
    DatabaseFields.Item.Border.BackgroundColor = clNone
    DatabaseFields.Item.Format.Alignment = haDefault
    DatabaseFields.Item.Format.SuppressIfDuplicated = False
    DatabaseFields.Item.Format.CanGrow = False
    DatabaseFields.Item.Format.MaxNLines = 0
    DatabaseFields.Item.Format.Field.Number.CurrencySymbol = '$'
    DatabaseFields.Item.Format.Field.Number.ThousandSymbol = ','
    DatabaseFields.Item.Format.Field.Number.DecimalSymbol = '.'
    DatabaseFields.Item.Format.Field.Number.ShowZeroValueAs = '0'
    DatabaseFields.Item.Format.Field.Date.FirstSeparator = '/'
    DatabaseFields.Item.Format.Field.Date.SecondSeparator = '/'
    DatabaseFields.Item.Format.Field.Time.AMString = 'AM'
    DatabaseFields.Item.Format.Field.Time.PMString = 'PM'
    DatabaseFields.Item.Format.Field.Time.HourMinSeparator = ':'
    DatabaseFields.Item.Format.Field.Time.MinSecSeparator = ':'
    DatabaseFields.Item.Format.Field.Paragraph.LineSpacing = 1.000000000000000000
    DatabaseFields.Item.Font.Charset = DEFAULT_CHARSET
    DatabaseFields.Item.Font.Color = clWindowText
    DatabaseFields.Item.Font.Height = -11
    DatabaseFields.Item.Font.Name = 'Tahoma'
    DatabaseFields.Item.Font.Style = []
    DatabaseFields.Item.HiliteConditions.Item.FontColor = clNone
    DatabaseFields.Item.HiliteConditions.Item.Background = clNone
    SummaryFields.Item.Top = -1
    SummaryFields.Item.Left = -1
    SummaryFields.Item.Width = -1
    SummaryFields.Item.Height = -1
    SummaryFields.Item.Border.Left = lsNone
    SummaryFields.Item.Border.Right = lsNone
    SummaryFields.Item.Border.Top = lsNone
    SummaryFields.Item.Border.Bottom = lsNone
    SummaryFields.Item.Border.TightHorizontal = False
    SummaryFields.Item.Border.DropShadow = False
    SummaryFields.Item.Border.ForeColor = clNone
    SummaryFields.Item.Border.BackgroundColor = clNone
    SummaryFields.Item.Format.Alignment = haDefault
    SummaryFields.Item.Format.SuppressIfDuplicated = False
    SummaryFields.Item.Format.CanGrow = False
    SummaryFields.Item.Format.MaxNLines = 0
    SummaryFields.Item.Format.Field.Number.CurrencySymbol = '$'
    SummaryFields.Item.Format.Field.Number.ThousandSymbol = ','
    SummaryFields.Item.Format.Field.Number.DecimalSymbol = '.'
    SummaryFields.Item.Format.Field.Number.ShowZeroValueAs = '0'
    SummaryFields.Item.Format.Field.Date.FirstSeparator = '/'
    SummaryFields.Item.Format.Field.Date.SecondSeparator = '/'
    SummaryFields.Item.Format.Field.Time.AMString = 'AM'
    SummaryFields.Item.Format.Field.Time.PMString = 'PM'
    SummaryFields.Item.Format.Field.Time.HourMinSeparator = ':'
    SummaryFields.Item.Format.Field.Time.MinSecSeparator = ':'
    SummaryFields.Item.Format.Field.Paragraph.LineSpacing = 1.000000000000000000
    SummaryFields.Item.Font.Charset = DEFAULT_CHARSET
    SummaryFields.Item.Font.Color = clWindowText
    SummaryFields.Item.Font.Height = -11
    SummaryFields.Item.Font.Name = 'Tahoma'
    SummaryFields.Item.Font.Style = []
    SummaryFields.Item.HiliteConditions.Item.FontColor = clNone
    SummaryFields.Item.HiliteConditions.Item.Background = clNone
    SpecialFields.Number = -1
    SpecialFields.Item.Top = -1
    SpecialFields.Item.Left = -1
    SpecialFields.Item.Width = -1
    SpecialFields.Item.Height = -1
    SpecialFields.Item.Border.Left = lsNone
    SpecialFields.Item.Border.Right = lsNone
    SpecialFields.Item.Border.Top = lsNone
    SpecialFields.Item.Border.Bottom = lsNone
    SpecialFields.Item.Border.TightHorizontal = False
    SpecialFields.Item.Border.DropShadow = False
    SpecialFields.Item.Border.ForeColor = clNone
    SpecialFields.Item.Border.BackgroundColor = clNone
    SpecialFields.Item.Format.Alignment = haDefault
    SpecialFields.Item.Format.SuppressIfDuplicated = False
    SpecialFields.Item.Format.CanGrow = False
    SpecialFields.Item.Format.MaxNLines = 0
    SpecialFields.Item.Format.Field.Number.CurrencySymbol = '$'
    SpecialFields.Item.Format.Field.Number.ThousandSymbol = ','
    SpecialFields.Item.Format.Field.Number.DecimalSymbol = '.'
    SpecialFields.Item.Format.Field.Number.ShowZeroValueAs = '0'
    SpecialFields.Item.Format.Field.Date.FirstSeparator = '/'
    SpecialFields.Item.Format.Field.Date.SecondSeparator = '/'
    SpecialFields.Item.Format.Field.Time.AMString = 'AM'
    SpecialFields.Item.Format.Field.Time.PMString = 'PM'
    SpecialFields.Item.Format.Field.Time.HourMinSeparator = ':'
    SpecialFields.Item.Format.Field.Time.MinSecSeparator = ':'
    SpecialFields.Item.Format.Field.Paragraph.LineSpacing = 1.000000000000000000
    SpecialFields.Item.Font.Charset = DEFAULT_CHARSET
    SpecialFields.Item.Font.Color = clWindowText
    SpecialFields.Item.Font.Height = -11
    SpecialFields.Item.Font.Name = 'Tahoma'
    SpecialFields.Item.Font.Style = []
    SpecialFields.Item.HiliteConditions.Item.FontColor = clNone
    SpecialFields.Item.HiliteConditions.Item.Background = clNone
    GroupNameFields.Number = -1
    GroupNameFields.Item.Top = -1
    GroupNameFields.Item.Left = -1
    GroupNameFields.Item.Width = -1
    GroupNameFields.Item.Height = -1
    GroupNameFields.Item.Border.Left = lsNone
    GroupNameFields.Item.Border.Right = lsNone
    GroupNameFields.Item.Border.Top = lsNone
    GroupNameFields.Item.Border.Bottom = lsNone
    GroupNameFields.Item.Border.TightHorizontal = False
    GroupNameFields.Item.Border.DropShadow = False
    GroupNameFields.Item.Border.ForeColor = clNone
    GroupNameFields.Item.Border.BackgroundColor = clNone
    GroupNameFields.Item.Format.Alignment = haDefault
    GroupNameFields.Item.Format.SuppressIfDuplicated = False
    GroupNameFields.Item.Format.CanGrow = False
    GroupNameFields.Item.Format.MaxNLines = 0
    GroupNameFields.Item.Format.Field.Number.CurrencySymbol = '$'
    GroupNameFields.Item.Format.Field.Number.ThousandSymbol = ','
    GroupNameFields.Item.Format.Field.Number.DecimalSymbol = '.'
    GroupNameFields.Item.Format.Field.Number.ShowZeroValueAs = '0'
    GroupNameFields.Item.Format.Field.Date.FirstSeparator = '/'
    GroupNameFields.Item.Format.Field.Date.SecondSeparator = '/'
    GroupNameFields.Item.Format.Field.Time.AMString = 'AM'
    GroupNameFields.Item.Format.Field.Time.PMString = 'PM'
    GroupNameFields.Item.Format.Field.Time.HourMinSeparator = ':'
    GroupNameFields.Item.Format.Field.Time.MinSecSeparator = ':'
    GroupNameFields.Item.Format.Field.Paragraph.LineSpacing = 1.000000000000000000
    GroupNameFields.Item.Font.Charset = DEFAULT_CHARSET
    GroupNameFields.Item.Font.Color = clWindowText
    GroupNameFields.Item.Font.Height = -11
    GroupNameFields.Item.Font.Name = 'Tahoma'
    GroupNameFields.Item.Font.Style = []
    GroupNameFields.Item.HiliteConditions.Item.FontColor = clNone
    GroupNameFields.Item.HiliteConditions.Item.Background = clNone
    RunningTotals.Number = -1
    RunningTotals.Item.Top = -1
    RunningTotals.Item.Left = -1
    RunningTotals.Item.Width = -1
    RunningTotals.Item.Height = -1
    RunningTotals.Item.Border.Left = lsNone
    RunningTotals.Item.Border.Right = lsNone
    RunningTotals.Item.Border.Top = lsNone
    RunningTotals.Item.Border.Bottom = lsNone
    RunningTotals.Item.Border.TightHorizontal = False
    RunningTotals.Item.Border.DropShadow = False
    RunningTotals.Item.Border.ForeColor = clNone
    RunningTotals.Item.Border.BackgroundColor = clNone
    RunningTotals.Item.Format.Alignment = haDefault
    RunningTotals.Item.Format.SuppressIfDuplicated = False
    RunningTotals.Item.Format.CanGrow = False
    RunningTotals.Item.Format.MaxNLines = 0
    RunningTotals.Item.Format.Field.Number.CurrencySymbol = '$'
    RunningTotals.Item.Format.Field.Number.ThousandSymbol = ','
    RunningTotals.Item.Format.Field.Number.DecimalSymbol = '.'
    RunningTotals.Item.Format.Field.Number.ShowZeroValueAs = '0'
    RunningTotals.Item.Format.Field.Date.FirstSeparator = '/'
    RunningTotals.Item.Format.Field.Date.SecondSeparator = '/'
    RunningTotals.Item.Format.Field.Time.AMString = 'AM'
    RunningTotals.Item.Format.Field.Time.PMString = 'PM'
    RunningTotals.Item.Format.Field.Time.HourMinSeparator = ':'
    RunningTotals.Item.Format.Field.Time.MinSecSeparator = ':'
    RunningTotals.Item.Format.Field.Paragraph.LineSpacing = 1.000000000000000000
    RunningTotals.Item.Font.Charset = DEFAULT_CHARSET
    RunningTotals.Item.Font.Color = clWindowText
    RunningTotals.Item.Font.Height = -11
    RunningTotals.Item.Font.Name = 'Tahoma'
    RunningTotals.Item.Font.Style = []
    RunningTotals.Item.HiliteConditions.Item.FontColor = clNone
    RunningTotals.Item.HiliteConditions.Item.Background = clNone
    WindowZoom.Preview = pwDefault
    WindowZoom.Magnification = -1
    WindowState = wsMaximized
    WindowButtonBar.CancelBtn = True
    WindowButtonBar.PrintSetupBtn = True
    WindowCursor.GroupArea = wcDefault
    WindowCursor.GroupAreaField = wcDefault
    WindowCursor.DetailArea = wcDefault
    WindowCursor.DetailAreaField = wcDefault
    WindowCursor.Graph = wcDefault
    WindowCursor.OnDemandSubreport = wcMagnify
    WindowCursor.HyperLink = wcDefault
    Graphs.Number = -1
    Graphs.Item.Top = -1
    Graphs.Item.Left = -1
    Graphs.Item.Width = -1
    Graphs.Item.Height = -1
    Graphs.Item.Border.Left = lsNone
    Graphs.Item.Border.Right = lsNone
    Graphs.Item.Border.Top = lsNone
    Graphs.Item.Border.Bottom = lsNone
    Graphs.Item.Border.TightHorizontal = False
    Graphs.Item.Border.DropShadow = False
    Graphs.Item.Border.ForeColor = clNone
    Graphs.Item.Border.BackgroundColor = clNone
    Graphs.Item.Style = unknownGraphType
    Graphs.Item.Text.TitleFont.Charset = DEFAULT_CHARSET
    Graphs.Item.Text.TitleFont.Color = clWindowText
    Graphs.Item.Text.TitleFont.Height = -11
    Graphs.Item.Text.TitleFont.Name = 'Tahoma'
    Graphs.Item.Text.TitleFont.Style = []
    Graphs.Item.Text.SubTitleFont.Charset = DEFAULT_CHARSET
    Graphs.Item.Text.SubTitleFont.Color = clWindowText
    Graphs.Item.Text.SubTitleFont.Height = -11
    Graphs.Item.Text.SubTitleFont.Name = 'Tahoma'
    Graphs.Item.Text.SubTitleFont.Style = []
    Graphs.Item.Text.FootNoteFont.Charset = DEFAULT_CHARSET
    Graphs.Item.Text.FootNoteFont.Color = clWindowText
    Graphs.Item.Text.FootNoteFont.Height = -11
    Graphs.Item.Text.FootNoteFont.Name = 'Tahoma'
    Graphs.Item.Text.FootNoteFont.Style = []
    Graphs.Item.Text.GroupsTitleFont.Charset = DEFAULT_CHARSET
    Graphs.Item.Text.GroupsTitleFont.Color = clWindowText
    Graphs.Item.Text.GroupsTitleFont.Height = -11
    Graphs.Item.Text.GroupsTitleFont.Name = 'Tahoma'
    Graphs.Item.Text.GroupsTitleFont.Style = []
    Graphs.Item.Text.DataTitleFont.Charset = DEFAULT_CHARSET
    Graphs.Item.Text.DataTitleFont.Color = clWindowText
    Graphs.Item.Text.DataTitleFont.Height = -11
    Graphs.Item.Text.DataTitleFont.Name = 'Tahoma'
    Graphs.Item.Text.DataTitleFont.Style = []
    Graphs.Item.Text.LegendFont.Charset = DEFAULT_CHARSET
    Graphs.Item.Text.LegendFont.Color = clWindowText
    Graphs.Item.Text.LegendFont.Height = -11
    Graphs.Item.Text.LegendFont.Name = 'Tahoma'
    Graphs.Item.Text.LegendFont.Style = []
    Graphs.Item.Text.GroupLabelsFont.Charset = DEFAULT_CHARSET
    Graphs.Item.Text.GroupLabelsFont.Color = clWindowText
    Graphs.Item.Text.GroupLabelsFont.Height = -11
    Graphs.Item.Text.GroupLabelsFont.Name = 'Tahoma'
    Graphs.Item.Text.GroupLabelsFont.Style = []
    Graphs.Item.Text.DataLabelsFont.Charset = DEFAULT_CHARSET
    Graphs.Item.Text.DataLabelsFont.Color = clWindowText
    Graphs.Item.Text.DataLabelsFont.Height = -11
    Graphs.Item.Text.DataLabelsFont.Name = 'Tahoma'
    Graphs.Item.Text.DataLabelsFont.Style = []
    Graphs.Item.Axis.GridLineX = gglNone
    Graphs.Item.Axis.GridLineY = gglMajor
    Graphs.Item.Axis.GridLineY2 = gglNone
    Graphs.Item.Axis.GridLineZ = gglNone
    Graphs.Item.Axis.DataValuesY = gdvAutomatic
    Graphs.Item.Axis.DataValuesY2 = gdvAutomatic
    Graphs.Item.Axis.DataValuesZ = gdvAutomatic
    Graphs.Item.Axis.MinY = -1.000000000000000000
    Graphs.Item.Axis.MaxY = -1.000000000000000000
    Graphs.Item.Axis.MinY2 = -1.000000000000000000
    Graphs.Item.Axis.MaxY2 = -1.000000000000000000
    Graphs.Item.Axis.MinZ = -1.000000000000000000
    Graphs.Item.Axis.MaxZ = -1.000000000000000000
    Graphs.Item.Axis.NumberFormatY = gnfNoDecimal
    Graphs.Item.Axis.NumberFormatY2 = gnfNoDecimal
    Graphs.Item.Axis.NumberFormatZ = gnfNoDecimal
    Graphs.Item.Axis.DivisionTypeY = gdvAutomatic
    Graphs.Item.Axis.DivisionTypeY2 = gdvAutomatic
    Graphs.Item.Axis.DivisionTypeZ = gdvAutomatic
    Graphs.Item.Axis.DivisionsY = -1
    Graphs.Item.Axis.DivisionsY2 = -1
    Graphs.Item.Axis.DivisionsZ = -1
    SummaryInfo.SavePreviewPicture = False
    Left = 336
    Top = 184
  end
  object qryCadastro: TFDQuery
    Connection = DM_CREDIT.FDConexao
    SQL.Strings = (
      'select * from cliente')
    Left = 320
    Top = 248
  end
  object dtsCadastro: TDataSource
    DataSet = qryCadastro
    Left = 376
    Top = 248
  end
end
