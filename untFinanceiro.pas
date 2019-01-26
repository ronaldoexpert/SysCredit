unit untFinanceiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ToolWin, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls,
  Datasnap.DBClient, Datasnap.Provider, Vcl.WinXCtrls;

type
  TfrmFinanceiro = class(TForm)
    pnlBotoes: TPanel;
    btnNovo: TSpeedButton;
    btnGravar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnFechar: TSpeedButton;
    pnlDados: TPanel;
    dtsFinanceiro: TDataSource;
    qryFinanceiro: TFDQuery;
    edtId: TEdit;
    edtVencimento: TDBEdit;
    edtCliente: TDBEdit;
    edtValor: TDBEdit;
    edtFormaPagto: TDBEdit;
    edtDescrFormPagto: TEdit;
    edtDescrCliente: TEdit;
    edtOrigem: TDBEdit;
    lblNumero: TLabel;
    lblDtEmissao: TLabel;
    lblDtVencimento: TLabel;
    lblCliente: TLabel;
    lblFormaPagto: TLabel;
    lblOrigem: TLabel;
    lblValor: TLabel;
    edtObs: TDBMemo;
    Label1: TLabel;
    dtsCliente: TDataSource;
    qryCliente: TFDQuery;
    edtNumero: TEdit;
    dtsAuxiliar: TDataSource;
    qryAuxiliar: TFDQuery;
    lblParcelado: TLabel;
    lblSelecao: TLabel;
    pnlGrid: TPanel;
    dbgFinanceiro: TDBGrid;
    rdgrpTipo: TRadioGroup;
    btnGeraParcela: TBitBtn;
    edtParcelas: TEdit;
    btnPesqCliente: TBitBtn;
    btnPesqCondPagto: TBitBtn;
    BitBtn1: TBitBtn;
    dtsFornecedor: TDataSource;
    qryFornecedor: TFDQuery;
    ActivityIndicator1: TActivityIndicator;
    BitBtn2: TBitBtn;
    edtEmissao: TMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure edtClienteExit(Sender: TObject);
    procedure edtFormaPagtoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtClienteKeyPress(Sender: TObject; var Key: Char);
    procedure edtFormaPagtoKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtNumeroExit(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure rdgrpTipoClick(Sender: TObject);
    procedure btnGeraParcelaClick(Sender: TObject);
    procedure btnPesqClienteClick(Sender: TObject);
    procedure btnPesqCondPagtoClick(Sender: TObject);
    procedure btnGeraParcelaEnter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edtOrigemChange(Sender: TObject);
    procedure edtOrigemExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    fNovo : boolean;
    vIncremento : Integer;
    procedure CarregaCampos;
    procedure LimpaCampos;
    procedure CarregaGridParcelas;
    function ValidaCampos : boolean;
  public
    { Public declarations }
    nor_set : integer;
    Function PesquisaFinanceiro(vStatus : Boolean) : boolean;
    Function PesquisaCliente(vStatus : Boolean) : boolean;
    Function PesquisaFormaPagto(vStatus : Boolean) : boolean;
    Function NORMAL(ARQUIVO : ShortString ; CAMPO : ShorTString ; ABUSCA : TDBEdit ) : ShortString;
  end;

var
  frmFinanceiro: TfrmFinanceiro;

implementation

{$R *.dfm}

uses untDMCredit, untFuncoes, untPesquisa;

{ TfrmFinanceiro }

procedure TfrmFinanceiro.BitBtn1Click(Sender: TObject);
begin
  PesquisaFinanceiro(False)
end;

procedure TfrmFinanceiro.BitBtn2Click(Sender: TObject);
begin
  if ActivityIndicator1.Animate = true then
    ActivityIndicator1.Animate := False
  else
    ActivityIndicator1.Animate := true;
end;

procedure TfrmFinanceiro.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFinanceiro.btnGeraParcelaClick(Sender: TObject);
var
  i : integer;
  vVenc : TDate;
begin
  if fNovo = True then
  begin
    qryAuxiliar.EmptyDataSet;
    i := 1;
    vIncremento := frmFuncoes.Novo('FINANCEIRO', 'Novo');

    while i <= strtoint(edtParcelas.Text) do
    begin
      qryAuxiliar.Append;

      if i = 1 then
      begin
        vVenc := StrToDate(edtVencimento.Text);
        vVenc := frmFuncoes.SomaMes(vVenc, 0, true);
      end
      else
      begin
        vVenc := StrToDate(edtVencimento.Text);
        vVenc := frmFuncoes.SomaMes(vVenc, i - 1, true);
      end;


      qryAuxiliar.FieldByName('ID').AsInteger := vIncremento;
      qryAuxiliar.FieldByName('NUMERO').AsString := edtNumero.Text + '/' + IntToStr(i);
      qryAuxiliar.FieldByName('DATA_EMISSAO').AsString := edtEmissao.Text;
      qryAuxiliar.FieldByName('DATA_VENCIMENTO').AsString := DateToStr(vVenc);
      qryAuxiliar.FieldByName('DATA_PAGAMENTO').AsString := '01/01/1900';
      qryAuxiliar.FieldByName('VALOR').AsFloat := StrToFloat(edtValor.Field.Value);
      qryAuxiliar.FieldByName('ORIGEM').AsString := edtOrigem.Text;
      qryAuxiliar.FieldByName('OBSERVACAO').AsString := edtObs.Text;
      qryAuxiliar.FieldByName('PARCELAS').AsInteger := StrToInt(edtParcelas.Text);
      qryAuxiliar.FieldByName('DOCORIGEM').AsString := edtNumero.Text;
      qryAuxiliar.FieldByName('PARCELAS').AsString := edtParcelas.Text;
      qryAuxiliar.FieldByName('ID_CLIENTE').AsString := edtCliente.Text;
      qryAuxiliar.FieldByName('FORMA_PAGTO').AsString := edtFormaPagto.Text;

      qryAuxiliar.Post;
      qryAuxiliar.Next;

      i := i + 1;
      vIncremento := vIncremento + 1;
    end;
  end;
end;

procedure TfrmFinanceiro.btnGeraParcelaEnter(Sender: TObject);
begin
  btnGeraParcelaClick(Self);
end;

procedure TfrmFinanceiro.btnGravarClick(Sender: TObject);
VAR
  vDocOriem : string;
begin
  if ValidaCampos then
  begin
    ActivityIndicator1.Animate := True;
    vDocOriem := edtNumero.Text;
    if rdgrpTipo.ItemIndex = 0 then
    begin
      if rdgrpTipo.ItemIndex = 1 then
      begin
        qryFinanceiro.FieldByName('PARCELAS').AsInteger := StrToInt(edtParcelas.Text);
        qryFinanceiro.FieldByName('DOCORIGEM').AsString := vDocOriem;
        qryFinanceiro.FieldByName('PARCELAS').AsString := edtParcelas.Text;
      end
      else
      begin
        qryFinanceiro.FieldByName('data_pagamento').AsString := '01/01/1900';
      end;

      if fNovo = True then
      BEGIN
        qryFinanceiro.FieldByName('ID').AsString := edtId.Text;
        qryFinanceiro.FieldByName('NUMERO').AsString := edtNumero.Text;

        frmFuncoes.Novo('FINANCEIRO', 'Gravar');
        fNovo := False;
      END;

      qryFinanceiro.FieldByName('data_emissao').AsString := edtEmissao.text;

      qryFinanceiro.Post;
      qryFinanceiro.ApplyUpdates(-1);
    end
    else
    begin
      qryAuxiliar.First;
      while not qryAuxiliar.Eof do
      begin
        frmFuncoes.Novo('FINANCEIRO', 'Gravar');
        qryAuxiliar.Next;
      end;

      qryAuxiliar.ApplyUpdates(-1);
    end;
    

    btnNovo.Enabled := True;
    btnGravar.Enabled := True;
    btnExcluir.Enabled := True;
    edtEmissao.Enabled := True;
    rdgrpTipo.Enabled := True;
    ActivityIndicator1.Animate := False;
    ShowMessage('Gravação efetuada com sucesso');
  END;
end;

procedure TfrmFinanceiro.btnNovoClick(Sender: TObject);
begin
  fNovo := True;
  LimpaCampos;
  lblSelecao.Caption := 'NOVO';
  edtParcelas.Text := '1';

  qryFinanceiro.Append;

  edtId.Text := IntToStr(frmFuncoes.Novo('FINANCEIRO', 'Novo'));
  edtNumero.Text := frmFuncoes.FormataNumero(edtId.Text);
  edtEmissao.Text := datetostr(Date);
  edtNumero.SetFocus;

  rdgrpTipo.Enabled := False;
  btnNovo.Enabled := False;
  btnGravar.Enabled := True;
  btnExcluir.Enabled := False;
end;

procedure TfrmFinanceiro.btnPesqClienteClick(Sender: TObject);
begin
  PesquisaCliente(False);
end;

procedure TfrmFinanceiro.btnPesqCondPagtoClick(Sender: TObject);
begin
  PesquisaFormaPagto(False);
end;

procedure TfrmFinanceiro.CarregaCampos;
begin
  edtOrigem.DataField := 'ORIGEM';
  edtVencimento.DataField := 'DATA_VENCIMENTO';
  edtCliente.DataField := 'ID_CLIENTE';
  edtFormaPagto.DataField := 'FORMA_PAGTO';
  edtValor.DataField := 'VALOR';
  edtObs.DataField := 'OBSERVACAO';

  qryFinanceiro.FieldByName('DATA_EMISSAO').EditMask := '99/99/9999';
  qryFinanceiro.FieldByName('DATA_VENCIMENTO').EditMask := '99/99/9999';
  qryFinanceiro.FieldByName('DATA_PAGAMENTO').EditMask := '99/99/9999';

  TFMTBCDField(edtValor.Field).DisplayFormat   := '###,####,R$###,##0.00';
end;

procedure TfrmFinanceiro.CarregaGridParcelas;
begin
  qryAuxiliar.SQL.Clear;
  qryAuxiliar.Close;
  qryAuxiliar.SQL.Add('Select ID, NUMERO, DATA_EMISSAO, DATA_VENCIMENTO, VALOR, ORIGEM, OBSERVACAO, PARCELAS, DOCORIGEM, ID_CLIENTE, FORMA_PAGTO, DATA_PAGAMENTO from FINANCEIRO Where id is null order by numero');
  qryAuxiliar.Open;

  dbgFinanceiro.Columns.Items[7].Visible := False;
  dbgFinanceiro.Columns.Items[8].Visible := False;
  dbgFinanceiro.Columns.Items[9].Visible := False;
  dbgFinanceiro.Columns.Items[10].Visible := False;
  dbgFinanceiro.Columns.Items[11].Visible := False;
end;

procedure TfrmFinanceiro.edtClienteExit(Sender: TObject);
begin
  if trim(edtCliente.Text) <> '' then
  begin
    PesquisaCliente(True);
  end;
end;

procedure TfrmFinanceiro.edtClienteKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8, #13]) then
  begin
    key := #0;
  end;
end;

procedure TfrmFinanceiro.edtFormaPagtoExit(Sender: TObject);
begin
  if trim(edtFormaPagto.Text) <> '' then
  begin
    PesquisaFormaPagto(True);
  end;
end;

procedure TfrmFinanceiro.edtFormaPagtoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8, #13]) then
  begin
    key := #0;
  end;
end;

procedure TfrmFinanceiro.edtNumeroExit(Sender: TObject);
begin
  if fNovo = False then
  begin
    if trim(edtNumero.Text) <> '' then PesquisaFinanceiro(True);
  end;
end;

procedure TfrmFinanceiro.edtOrigemChange(Sender: TObject);
VAR
INICIO: INTEGER;
begin
  IF ((edtOrigem.SelStart=0) AND (edtOrigem.GetTextLen>0)) THEN EXIT;
  INICIO:=edtOrigem.Selstart ;
  NOR_SET:=1;
  edtOrigem.text := NORMAL('FORNECEDOR', 'DESCRICAO', edtOrigem);
  edtOrigem.SelStart := INICIO;
end;

procedure TfrmFinanceiro.edtOrigemExit(Sender: TObject);
var
  id_forn : integer;
begin
  if (Trim(edtOrigem.Text) <> '') and fNovo = True then
  BEGIN
    qryFornecedor.Close;
    qryFornecedor.SQL.Clear;
    qryFornecedor.SQL.Add('SELECT * FROM FORNECEDOR WHERE DESCRICAO = ' + QuotedStr(edtOrigem.Text));
    qryFornecedor.Open;

    if qryFornecedor.RecordCount = 0 then
    BEGIN
      if Application.MessageBox('Fornecedor não existe. Deseja cadastrar?','Controle Cartão de Crédito',mb_yesno + mb_iconquestion) = id_yes then
      begin
        qryFornecedor.Insert;

        id_forn := frmFuncoes.Novo('FORNECEDOR', 'Novo');
        qryFornecedor.FieldByName('id').AsInteger := id_forn;
        qryFornecedor.FieldByName('descricao').AsString := edtOrigem.Text;
        qryFornecedor.FieldByName('datacad').AsDateTime := Date;

        qryFornecedor.ApplyUpdates(-1);

        frmFuncoes.Novo('FORNECEDOR', 'Gravar');
      end;
    END;
  END;
end;

procedure TfrmFinanceiro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
  Begin
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfrmFinanceiro.FormShow(Sender: TObject);
begin
  qryFinanceiro.SQL.Clear;
  qryFinanceiro.Close;
  qryFinanceiro.SQL.Add('Select * from FINANCEIRO where ID is null');
  qryFinanceiro.OpenOrExecute;

  CarregaCampos;
  CarregaGridParcelas;
  edtEmissao.Text := datetostr(Date);
  LimpaCampos;
  edtNumero.SetFocus;
  edtEmissao.Enabled := True;

  if rdgrpTipo.ItemIndex = 0 then
  begin
    Height := 366;
    Position := poScreenCenter;
  end
  else
  begin
    Height := 557;
    Position := poScreenCenter;
  end;
end;

procedure TfrmFinanceiro.LimpaCampos;
begin
  edtid.Clear;
  edtNumero.Clear;
  edtEmissao.Text := DateToStr(Date);
  edtVencimento.Clear;
  edtCliente.Clear;
  edtDescrCliente.Clear;
  edtFormaPagto.Clear;
  edtDescrFormPagto.Clear;
  edtOrigem.Clear;
  edtValor.Clear;
end;

function TfrmFinanceiro.NORMAL(ARQUIVO, CAMPO: ShorTString;
  ABUSCA: TDBEdit): ShortString;
begin
    IF (Trim(abusca.Text)='') OR  (NOR_SET=0) then
    Begin
      Result:='';
      exit;
    End;

    With qryCliente do
    Begin
       Close;
       SQL.Clear;
       Params.Clear;
       SQL.add('Select '+CAMPO+' From '+ARQUIVO+' Where '+CAMPO+' like '+#39+''+COPY(ABUSCA.TEXT,1,ABUSCA.SelStart)+'%'+#39);
       open;
       RESULT:=COPY(ABUSCA.TEXT,0,ABUSCA.SelStart)+COPY(Fieldbyname(CAMPO).AsString,ABUSCA.SelStart+1,255);
    End;
    IF NOR_SET=0 THEN NOR_SET:=1 ELSE NOR_SET:=0;
end;

function TfrmFinanceiro.PesquisaCliente(vStatus: Boolean): boolean;
begin
  if vStatus = True then
  begin
    qryCliente.Close;
    qryCliente.SQL.Clear;
    qryCliente.SQL.Add('Select * from CLIENTE where ID = ' + QuotedStr(edtCliente.Text));
    qryCliente.OpenOrExecute;

    if qryCliente.RecordCount = 0 then
    begin
      ShowMessage('Registro não encontrado');
      edtCliente.SetFocus;
      edtCliente.Clear;
      edtDescrCliente.Clear;
    end
    else
    begin
      edtDescrCliente.Text := qryCliente.FieldByName('nome').AsString;
    end;
  end
  else
  begin
    frmPesquisa := TfrmPesquisa.Create(Self);
    try
      frmPesquisa.vTabela := 'CLIENTE';
      frmPesquisa.vTela := 'FINANCEIRO';
      frmPesquisa.vComando := 'Select * from CLIENTE ORDER BY NOME';
      frmPesquisa.ShowModal
    finally
      frmPesquisa.Release;
    end;
  end;
end;

function TfrmFinanceiro.PesquisaFinanceiro(vStatus: Boolean): boolean;
begin
  if vStatus = True then
  begin
    qryFinanceiro.Close;
    qryFinanceiro.SQL.Clear;
    qryFinanceiro.SQL.Add('Select * from FINANCEIRO where NUMERO = ' + QuotedStr(edtNumero.Text));
    qryFinanceiro.OpenOrExecute;

    if qryFinanceiro.RecordCount = 0 then
    begin
      ShowMessage('Registro não encontrado');
      edtFormaPagto.SetFocus;
      edtFormaPagto.Clear;
      edtDescrFormPagto.Clear
    end
    else
    begin
      edtId.Text := qryFinanceiro.FieldByName('ID').AsString;

      if trim(edtCliente.Text) <> '' then PesquisaCliente(True);
      if trim(edtFormaPagto.Text) <> '' then PesquisaFormaPagto(True);

      TFMTBCDField(edtValor.Field).DisplayFormat   := '###,####,R$###,##0.00';
    end;
  end
  else
  begin
    frmPesquisa := TfrmPesquisa.Create(Self);
    try
      frmPesquisa.vTabela := 'FINANCEIRO';
      frmPesquisa.vTela := 'FINANCEIRO';
      frmPesquisa.vComando := 'Select F.Numero, F.data_emissao, F.data_vencimento, C.nome, F.origem, F. valor from FINANCEIRO F join CLIENTE C on (F.id_cliente = C.id) where DATA_PAGAMENTO = ' + QuotedStr('01/01/1900') + ' order by data_vencimento';
      frmPesquisa.ShowModal;
    finally
      frmPesquisa.Release;
    end;
  end;
end;

function TfrmFinanceiro.PesquisaFormaPagto(vStatus: Boolean): boolean;
begin
  if vStatus = True then
  begin
    qryCliente.Close;
    qryCliente.SQL.Clear;
    qryCliente.SQL.Add('Select * from FORMA_PAGTO where ID = ' + QuotedStr(edtFormaPagto.Text));
    qryCliente.OpenOrExecute;

    if qryCliente.RecordCount = 0 then
    begin
      ShowMessage('Registro não encontrado');
      edtFormaPagto.SetFocus;
      edtFormaPagto.Clear;
      edtDescrFormPagto.Clear
    end
    else
    begin
      edtDescrFormPagto.Text := qryCliente.FieldByName('DESCRICAO').AsString;
    end;
  end
  else
  begin
    frmPesquisa := TfrmPesquisa.Create(Self);
    try
      frmPesquisa.vTabela := 'FORMA_PAGTO';
      frmPesquisa.vTela := 'FINANCEIRO';
      frmPesquisa.vComando := 'Select * from FORMA_PAGTO ORDER BY DESCRICAO';
      frmPesquisa.ShowModal
    finally
      frmPesquisa.Release;
    end;
  end;
end;

procedure TfrmFinanceiro.rdgrpTipoClick(Sender: TObject);
begin
  if rdgrpTipo.ItemIndex = 0 then
  begin
    Height := 366;

    lblParcelado.Visible := False;
    edtParcelas.Visible := False;
    btnGeraParcela.Visible := False;
  end
  else
  begin
    Height := 557;

    lblParcelado.Visible := True;
    edtParcelas.Visible := True;
    btnGeraParcela.Visible := True;
  end;
end;

function TfrmFinanceiro.ValidaCampos: boolean;
var
  vRetorno : Boolean;
begin
  vRetorno := True;
  if rdgrpTipo.ItemIndex = 1 then
  begin
    if edtParcelas.Text = '' then
    begin
      ShowMessage('Informa a quantidade de parcelas');
      vRetorno := False;
    end;
  end;

  Result := vRetorno;
end;

end.

{

if fNovo = False then
  begin
    dtInicial := edtDtInicio.Text[4] + edtDtInicio.Text[5] + edtDtInicio.Text[3] + edtDtInicio.Text[1] + edtDtInicio.Text[2] + edtDtInicio.Text[6] + edtDtInicio.Text[7] + edtDtInicio.Text[8] + edtDtInicio.Text[9] + edtDtInicio.Text[10];
    dtFinal := edtDtFim.Text[4] + edtDtFim.Text[5] + edtDtFim.Text[3] + edtDtFim.Text[1] + edtDtFim.Text[2] + edtDtFim.Text[6] + edtDtFim.Text[7] + edtDtFim.Text[8] + edtDtFim.Text[9] + edtDtFim.Text[10];

    qryAuxiliar.SQL.Clear;
    qryAuxiliar.Close;
    qryAuxiliar.SQL.Add('Select NUMERO, DATA_EMISSAO, DATA_VENCIMENTO, VALOR, ORIGEM, OBSERVACAO from FINANCEIRO Where data_vencimento between ' + QuotedStr(dtInicial) + ' and ' + QuotedStr(dtFinal) + '');
    qryAuxiliar.OpenOrExecute;
  end;

}
