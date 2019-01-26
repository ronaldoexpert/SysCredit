unit untBaixaConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, IniFiles,Registry, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, FireDAC.Phys.IBWrapper, FireDAC.Phys.IBBase, DateUtils;

type
  TfrmBaixaConsulta = class(TForm)
    pnlRodape: TPanel;
    pnlTop: TPanel;
    pnlCentro: TPanel;
    dbgrConsulta: TDBGrid;
    GroupBox1: TGroupBox;
    rdTipos: TRadioGroup;
    edtDtInicio: TDateTimePicker;
    edtDtFim: TDateTimePicker;
    lblAte: TLabel;
    edtDescrFormaPagto: TEdit;
    edtCodFormaPagto: TEdit;
    edtCodCliente: TEdit;
    edtDescrCliente: TEdit;
    lblCliente: TLabel;
    lblFormaPagto: TLabel;
    btnPesquisar: TBitBtn;
    GroupBox2: TGroupBox;
    edtTotalGeral: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    pnlTotal: TPanel;
    BitBtn3: TBitBtn;
    edtDataPagamento: TDateTimePicker;
    edtValorPago: TEdit;
    lblDtPagamento: TLabel;
    lblVlrPago: TLabel;
    btnImprimir: TBitBtn;
    procedure btnPesquisarClick(Sender: TObject);
    procedure edtCodClienteExit(Sender: TObject);
    procedure edtCodFormaPagtoExit(Sender: TObject);
    procedure edtCodFormaPagtoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure pnlTotalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure edtValorPagoEnter(Sender: TObject);
    procedure edtValorPagoExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure SomaTotal;
  public
    { Public declarations }
    Function PesquisaCliente(vStatus : Boolean) : boolean;
    Function PesquisaFormaPagto(vStatus : Boolean) : boolean;
  end;

var
  frmBaixaConsulta: TfrmBaixaConsulta;

implementation

{$R *.dfm}

uses untDMCredit, untPesquisa, untFuncoes, untFinanceiro, untFormaPagto,
  untPrincipal;

procedure TfrmBaixaConsulta.BitBtn1Click(Sender: TObject);
begin
  PesquisaCliente(False);
end;

procedure TfrmBaixaConsulta.BitBtn2Click(Sender: TObject);
begin
  PesquisaFormaPagto(False);
end;

procedure TfrmBaixaConsulta.BitBtn3Click(Sender: TObject);
begin
  if edtValorPago.Text = edtTotalGeral.Text then
  begin
    DM_CREDIT.qryConsulta.First;
    while not DM_CREDIT.qryConsulta.Eof do
    begin
      DM_CREDIT.qryConsulta.Edit;

      DM_CREDIT.qryConsulta.FieldByName('data_pagamento').AsDateTime := edtDataPagamento.Date;
      DM_CREDIT.qryConsulta.FieldByName('valor_pago').AsFloat := DM_CREDIT.qryConsulta.FieldByName('valor').AsFloat;

      DM_CREDIT.qryConsulta.Post;
      DM_CREDIT.qryConsulta.ApplyUpdates(-1);

      DM_CREDIT.qryConsulta.Next;
    end;
    MessageDlg('Baixa finalizada com sucesso!', mtConfirmation, [mbOK], 0);
    DM_CREDIT.qryConsulta.EmptyDataSet;
    edtValorPago.Text := '0,00';
  end
  ELSE
  BEGIN
    MessageDlg('Valor pago maior que o total.', mtInformation, [mbOK], 0);
  END;
end;

procedure TfrmBaixaConsulta.btnImprimirClick(Sender: TObject);
begin
  {Crpe1.DiscardSavedData;

  if rdTipos.ItemIndex = 0 then  Crpe1.ReportName := 'Relatorio\FinEM.rpt'
  else if rdTipos.ItemIndex = 1 then Crpe1.ReportName := 'Relatorio\FinVC.rpt'
  else if rdTipos.ItemIndex = 2 then Crpe1.ReportName := 'Relatorio\FinPG.rpt';

  Crpe1.ParamByName('DTINICIO', '').CurrentValue := DateToStr(edtDtInicio.Date);
  Crpe1.ParamByName('DTFIM', '').CurrentValue := DateToStr(edtDtFim.Date);

  Crpe1.Execute;
  Crpe1.SetFocus;}
end;

procedure TfrmBaixaConsulta.btnPesquisarClick(Sender: TObject);
var
  vComando : String;
begin

  vComando :=  'SELECT F.NUMERO, C.NOME, F.DATA_EMISSAO, F.DATA_VENCIMENTO, F.VALOR, F.ORIGEM, FP.DESCRICAO,' +
  ' F.DATA_PAGAMENTO, F.VALOR_PAGO from FINANCEIRO F JOIN CLIENTE C ON (F.ID_CLIENTE = C.ID) JOIN FORMA_PAGTO FP ON (F.FORMA_PAGTO = FP.ID)';

  if rdTipos.ItemIndex = 0 then  vComando := vComando + ' AND F.data_emissao between '
  else
  if rdTipos.ItemIndex = 1 then  vComando := vComando + ' AND F.DATA_PAGAMENTO = ' + QuotedStr('01/01/1900') + ' AND F.data_vencimento between '
  else
  if rdTipos.ItemIndex = 2 then  vComando := vComando + ' AND F.DATA_PAGAMENTO <> ' + QuotedStr('01/01/1900') + ' AND F.data_pagamento between ';

  vComando := vComando + QuotedStr(frmFuncoes.DataSQL(DateToStr(edtDtInicio.Date), 'mm/dd/aaaa')) + ' and ' + QuotedStr(frmFuncoes.DataSQL(DateToStr(edtDtFim.Date), 'mm/dd/aaaa'));


  if edtCodCliente.Text <> '' then vComando := vComando + ' and F.id_cliente = ' + trim(edtCodCliente.Text);
  if edtCodFormaPagto.Text <> '' then vComando := vComando + ' and F.forma_pagto = ' + trim(edtCodFormaPagto.Text);

  vComando := vComando + ' ORDER BY C.NOME';


  frmFuncoes.ExecutaSQL(vComando, 'Abrir', DM_CREDIT.qryConsulta);

  TCurrencyField(dbgrConsulta.Fields[4]).DisplayFormat := '###,###,###,##0.00';

  SomaTotal;
end;

procedure TfrmBaixaConsulta.edtCodClienteExit(Sender: TObject);
begin
  if trim(edtCodCliente.Text) <> '' then
  begin
    PesquisaCliente(True);
  end;
end;

procedure TfrmBaixaConsulta.edtCodFormaPagtoExit(Sender: TObject);
begin
  if edtCodFormaPagto.Text <> '' then PesquisaFormaPagto(True);
end;

procedure TfrmBaixaConsulta.edtCodFormaPagtoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9', #8, #13]) then
  begin
    key := #0;
  end;
end;

procedure TfrmBaixaConsulta.edtValorPagoEnter(Sender: TObject);
begin
  edtValorPago.SelectAll;
end;

procedure TfrmBaixaConsulta.edtValorPagoExit(Sender: TObject);
begin
  edtValorPago.Text := FormatFloat('#0.00', StrToFloat(edtValorPago.Text));
end;

procedure TfrmBaixaConsulta.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
  Begin
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfrmBaixaConsulta.FormShow(Sender: TObject);
begin
  frmFuncoes.ExecutaSQL('Select F.NUMERO, C.NOME, F.DATA_EMISSAO, F.DATA_VENCIMENTO, F.VALOR, F.ORIGEM, FP.DESCRICAO,' +
  ' F.DATA_PAGAMENTO, F.VALOR_PAGO from FINANCEIRO F JOIN CLIENTE C ON (F.ID_CLIENTE = C.ID) JOIN FORMA_PAGTO FP ON (F.FORMA_PAGTO = FP.ID) WHERE F.ID IS NULL', 'Abrir', DM_CREDIT.qryConsulta);

  DM_CREDIT.qryConsulta.EmptyDataSet;
end;

function TfrmBaixaConsulta.PesquisaCliente(vStatus: Boolean): boolean;
begin
if vStatus = True then
  begin
    frmFuncoes.ExecutaSQL('Select * from CLIENTE where ID = ' + QuotedStr(edtCodCliente.Text), 'Abrir', DM_CREDIT.qryCliente);

    if DM_CREDIT.qryCliente.RecordCount = 0 then
    begin
      ShowMessage('Registro não encontrado');
      edtCodCliente.SetFocus;
      edtCodCliente.Clear;
      edtDescrCliente.Clear;
    end
    else
    begin
      edtDescrCliente.Text := DM_CREDIT.qryCliente.FieldByName('nome').AsString;
    end;
  end
  else
  begin
    frmPesquisa := TfrmPesquisa.Create(Self);
    try
      frmPesquisa.vTabela := 'CLIENTE';
      frmPesquisa.vTela := 'BAIXA';
      frmPesquisa.ShowModal
    finally
      frmPesquisa.Release;
    end;
  end;
end;

function TfrmBaixaConsulta.PesquisaFormaPagto(vStatus: Boolean): boolean;
begin
  if vStatus = True then
  begin
    frmFuncoes.ExecutaSQL('Select * from FORMA_PAGTO where ID = ' + QuotedStr(edtCodFormaPagto.Text), 'Abrir', DM_CREDIT.qryCliente);

    if DM_CREDIT.qryCliente.RecordCount = 0 then
    begin
      ShowMessage('Registro não encontrado');
      edtCodFormaPagto.SetFocus;
      edtCodFormaPagto.Clear;
      edtDescrFormaPagto.Clear
    end
    else
    begin
      edtDescrFormaPagto.Text := DM_CREDIT.qryCliente.FieldByName('DESCRICAO').AsString;
    end;
  end
  else
  begin
    frmPesquisa := TfrmPesquisa.Create(Self);
    try
      frmPesquisa.vTabela := 'FORMA_PAGTO';
      frmPesquisa.vTela := 'BAIXA';
      frmPesquisa.ShowModal
    finally
      frmPesquisa.Release;
    end;
  end;
end;

procedure TfrmBaixaConsulta.pnlTotalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TWinControl(Sender).Handle, WM_SYSCOMMAND, $F012,0);
end;

procedure TfrmBaixaConsulta.SomaTotal;
var
  vTotal : Real;
begin
  if DM_CREDIT.qryConsulta.RecordCount <> 0 then
  begin
    DM_CREDIT.qryConsulta.First;
    while not DM_CREDIT.qryConsulta.Eof do
    begin
      vTotal := vTotal + DM_CREDIT.qryConsulta.FieldByName('valor').AsFloat;
      DM_CREDIT.qryConsulta.Next;
    end;
    edtTotalGeral.Text := FloatToStr(vTotal);
  end
  else
    edtTotalGeral.Text := '0';

  edtTotalGeral.Text := FormatFloat('#0.00', StrToFloat(edtTotalGeral.Text));
end;

end.
{
  fazer objetos se moverem

   if fMoving then
  begin
    ReleaseCapture;
    PostMessage(TWinControl(Sender).Handle, WM_SYSCOMMAND, $F012,0);
  end;

}