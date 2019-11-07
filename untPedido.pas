unit untPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPedido = class(TForm)
    pnlPrincipal: TPanel;
    btnFecharCaixa: TSpeedButton;
    dbgPedido: TDBGrid;
    edtProduto: TEdit;
    btnPesquisaProduto: TBitBtn;
    qryListaProdutos: TFDQuery;
    dtsListaProdutos: TDataSource;
    qryGrid: TFDQuery;
    dtsGrid: TDataSource;
    qryVenda: TFDQuery;
    dtsVenda: TDataSource;
    pnlBotton: TPanel;
    btnNovaVenda: TSpeedButton;
    edtTotal: TEdit;
    btnFinalizaVenda: TSpeedButton;
    btnFechar: TSpeedButton;
    Panel1: TPanel;
    lblProduto: TLabel;
    btnRetirada: TSpeedButton;
    btnPrevia: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure btnFecharCaixaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtProdutoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure btnPesquisaProdutoClick(Sender: TObject);
    procedure btnNovaVendaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtProdutoExit(Sender: TObject);
    procedure btnFinalizaVendaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnRetiradaClick(Sender: TObject);
    procedure btnPreviaClick(Sender: TObject);
  private
    { Private declarations }
    vIDVenda : Integer;
    vNovaVenda : Boolean;
    procedure CarregaGrid;
    procedure Totalizar;
    procedure VendaNova;
    procedure FechaVenda;
    procedure GravaGrid;
  public
    { Public declarations }
    vIdCaixa : Integer;
    function PesquisaProduto(vStatus : Boolean) : Boolean;


  end;

var
  frmPedido: TfrmPedido;

implementation

{$R *.dfm}

uses untAbreCaixa, untDMCredit, untFormaPagto, untFuncoes, untPesquisa,
  untPrincipal, untRetirada;

procedure TfrmPedido.CarregaGrid;
begin
  qryGrid.SQL.Clear;
  qryGrid.Close;
  qryGrid.SQL.Add('select PP.ID_PRODUTO as CodProd, P.DESCRICAO, PP.VLR_UNITARIO, PP.QUANTIDADE, PP.VLR_TOTAL from PRODUTO P join PROD_PEDIDO PP ON (PP.ID_PRODUTO = P.ID) where PP.ID IS NULL');
  qryGrid.Open;

  dbgPedido.Columns[0].Width := 55;
  dbgPedido.Columns[1].Width := 200;
  dbgPedido.Columns[2].Width := 80;
  dbgPedido.Columns[3].Width := 80;
  dbgPedido.Columns[4].Width := 70;
end;

procedure TfrmPedido.edtProdutoClick(Sender: TObject);
begin
  edtProduto.SelectAll;
end;

procedure TfrmPedido.edtProdutoExit(Sender: TObject);
begin
  if edtProduto.Text <> '' then
  begin 
    PesquisaProduto(True);
  end;
  if edtProduto.Text <> '' then
  begin         
    qryGrid.Insert;
    qryGrid.FieldByName('codProd').AsString := edtProduto.Text;
    qryGrid.FieldByName('descricao').AsString := DM_CREDIT.qryAuxiliar.FieldByName('descricao').AsString;
    qryGrid.FieldByName('vlr_unitario').AsFloat := DM_CREDIT.qryAuxiliar.FieldByName('vlr_unitario').AsFloat;
    qryGrid.FieldByName('quantidade').AsFloat := 1;
    qryGrid.FieldByName('vlr_total').AsFloat := qryGrid.FieldByName('quantidade').AsFloat * qryGrid.FieldByName('vlr_unitario').AsFloat;
    qryGrid.Post;
    edtProduto.SetFocus;
    edtProduto.Clear;
    Totalizar;
  end;
end;

procedure TfrmPedido.edtProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F5 then
  begin
    PesquisaProduto(False);
  end; 
  
end;

procedure TfrmPedido.edtProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8, #13]) then
  begin
    key := #0;
  end;
end;

procedure TfrmPedido.FechaVenda;
begin
  frmFuncoes.ExecutaSQL('select * from PEDIDO WHERE ID IS NULL', 'Abrir', qryVenda);
  vIDVenda := frmFuncoes.Novo('PEDIDOS', 'Fim');
  qryVenda.Insert;
  qryVenda.FieldByName('id').AsInteger := vIDVenda;
  qryVenda.FieldByName('numero').AsString := 'P' + frmFuncoes.FormataNumero(IntToStr(vIDVenda));
  qryVenda.FieldByName('id_condpagto').AsInteger := DM_CREDIT.qryConfig.FieldByName('cond_pagto_pedido').AsInteger;
  qryVenda.FieldByName('data').AsDateTime := Date;
  qryVenda.FieldByName('tot_produto').AsFloat := StrToFloat(edtTotal.Text);
  qryVenda.FieldByName('desconto').AsFloat := 0;
  qryVenda.FieldByName('vlr_total').AsFloat := StrToFloat(edtTotal.Text);
  qryVenda.Post;
  qryVenda.ApplyUpdates(-1);

  GravaGrid;
  frmFuncoes.GravaMoviCaixa(IntToStr(vidCaixa), IntToStr(vIDVenda), 'Pedido - ' + qryVenda.FieldByName('numero').AsString, 'C', StrToFloat(edtTotal.Text));
  VendaNova;
end;

procedure TfrmPedido.FormActivate(Sender: TObject);
begin
  VendaNova;
end;

procedure TfrmPedido.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If key = VK_F1 then
  Begin
    btnNovaVendaClick(Self);
  end;
  
  If key = VK_F4 then
  Begin
    btnFinalizaVendaClick(Self);
  end;

  If key = VK_F8 then
  Begin
    btnFecharCaixaClick(Self);
  end;

  If key = VK_F9 then
  Begin
    btnRetiradaClick(Self);
  end;

  If key = VK_ESCAPE then
  Begin
    btnFecharClick(Self);
  end;
end;

procedure TfrmPedido.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
  Begin
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfrmPedido.FormShow(Sender: TObject);
begin
  frmFuncoes.ExecutaSQL('Select * from CONFIG', 'Abrir', DM_CREDIT.qryAuxiliar);

  if DM_CREDIT.qryAuxiliar.FieldByName('CAIXAABERTO').AsString = 'N' THEN
  BEGIN
    frmFuncoes.ExecutaSQL('Update CONFIG set CAIXAABERTO = ' + QuotedStr('S'), 'Executar', DM_CREDIT.qryAuxiliar);
    frmPrincipal.lblStatusCaixa.Caption := 'CAIXA ABERTO';
  END;

end;

procedure TfrmPedido.GravaGrid;
begin
  qryGrid.First;
  while not qryGrid.Eof do
  begin
    frmFuncoes.ExecutaSQL('Select * from PROD_PEDIDO WHERE ID IS NULL', 'Abrir', qryListaProdutos);
    qryListaProdutos.Insert;
    qryListaProdutos.FieldByName('id').AsInteger := frmFuncoes.Novo('PROD_PEDIDO', 'Fim');
    qryListaProdutos.FieldByName('id_pedido').AsInteger := vIDVenda;
    qryListaProdutos.FieldByName('id_produto').AsInteger := qryGrid.FieldByName('codProd').AsInteger;
    qryListaProdutos.FieldByName('vlr_unitario').AsFloat := qryGrid.FieldByName('vlr_unitario').AsFloat;
    qryListaProdutos.FieldByName('quantidade').AsFloat := qryGrid.FieldByName('quantidade').AsFloat;
    qryListaProdutos.FieldByName('vlr_total').AsFloat := qryGrid.FieldByName('vlr_total').AsFloat;
    qryListaProdutos.Post;
    qryListaProdutos.ApplyUpdates(-1);
    qryGrid.Next;
  end;
end;

function TfrmPedido.PesquisaProduto(vStatus: Boolean): Boolean;
begin
  if vStatus = True then
  begin
    DM_CREDIT.qryAuxiliar.Close;
    DM_CREDIT.qryAuxiliar.SQL.Clear;
    DM_CREDIT.qryAuxiliar.SQL.Add('Select * from produto where ID = ' + QuotedStr(edtProduto.Text));
    DM_CREDIT.qryAuxiliar.OpenOrExecute;

    if DM_CREDIT.qryAuxiliar.RecordCount = 0 then
    begin
      ShowMessage('Registro não encontrado');
      edtProduto.Clear;
      edtProduto.SetFocus;
    end;
  end
  else
  begin
    frmPesquisa := TfrmPesquisa.Create(Self);
    try
      frmPesquisa.vTela := 'PEDIDO';
      frmPesquisa.vTabela := 'PRODUTO';
      frmPesquisa.vComando := 'Select ID, DESCRICAO, VLR_UNITARIO, ESTOQUE FROM PRODUTO ORDER BY DESCRICAO';
      frmPesquisa.ShowModal
    finally
      frmPesquisa.Release;
      edtProduto.SetFocus;
    end;
  end;
end;

procedure TfrmPedido.btnRetiradaClick(Sender: TObject);
begin
  frmRetirada := TfrmRetirada.Create(Self);
  try
    frmRetirada.LimpaCampos;
    frmRetirada.ShowModal;
  finally
    frmRetirada.Release;
  end;
end;

procedure TfrmPedido.Totalizar;
var
  vTotal : real;
begin
  vTotal := 0;
  qryGrid.First;
  while not qrygrid.Eof do
  begin
    vTotal := vTotal + qryGrid.FieldByName('vlr_total').AsFloat; 
    qrygrid.Next; 
  end;
  edtTotal.text := FormatFloat(',0.00',(vTotal));
end;

procedure TfrmPedido.VendaNova;
begin
  CarregaGrid;
  vNovaVenda := True;
  vIDVenda := frmFuncoes.Novo('PEDIDOS', '');
  vIdCaixa := 1;
  edtProduto.SetFocus;
end;

procedure TfrmPedido.btnPesquisaProdutoClick(Sender: TObject);
begin
  PesquisaProduto(False)
end;

procedure TfrmPedido.btnPreviaClick(Sender: TObject);
begin
  frmPesquisa := TfrmPesquisa.Create(Self);
  try
    frmPesquisa.vTela := 'PEDIDO';
    frmPesquisa.vTabela := 'MOVI_CONTA';
    frmPesquisa.vComando := 'select HISTORICO, DATA, TIPO, VALOR from MOVI_CONTA where data = ' + QuotedStr(frmFuncoes.DataSQL(DateToStr(DATE), 'mm/dd/aaaa'));
    frmPesquisa.ShowModal;
  finally
    frmPesquisa.Release;
  end;
end;

procedure TfrmPedido.btnFecharCaixaClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente fechar o caixa?','SysCredit', MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    frmRetirada := TfrmRetirada.Create(Self);
    try
      frmRetirada.LimpaCampos;
      frmRetirada.edtHistorico.Text := 'Fechamento de Caixa';
      frmRetirada.ShowModal;
    finally
      frmRetirada.Release;
    end;
  end;
end;

procedure TfrmPedido.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPedido.btnFinalizaVendaClick(Sender: TObject);
begin
  if Application.MessageBox('Venda a vista?','SysCredit', MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    FechaVenda;
  end;
end;

procedure TfrmPedido.btnNovaVendaClick(Sender: TObject);
begin
  if qryGrid.RecordCount > 0 then
  begin
    if Application.MessageBox('Há uma venda sendo feita. ' + #13 + 'Deseja cancelar e abrir uma nova?','SysCredit', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin
      FormActivate(Self);
    end;
  end
  else
  begin
    FormActivate(Self);
    edtProduto.SetFocus;
  end;
end;

end.
