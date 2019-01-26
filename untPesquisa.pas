unit untPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmPesquisa = class(TForm)
    dbgPesquisa: TDBGrid;
    dtsPesquisa: TDataSource;
    qryPesquisa: TFDQuery;
    pnlRodape: TPanel;
    GroupBox1: TGroupBox;
    edtPesquisa: TEdit;
    lblPesquisa: TLabel;
    btnFechar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure dbgPesquisaDblClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
    procedure dbgPesquisaTitleClick(Column: TColumn);
    procedure dbgPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgPesquisaDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
  private
    { Private declarations }
    procedure Selecionar;
    procedure CarregaGrid;
    procedure FormataGrid;
  public
    { Public declarations }
    vTabela, vTela, vComando : String;
  end;

var
  frmPesquisa: TfrmPesquisa;

implementation

{$R *.dfm}

uses untBaixaConsulta, untDMCredit, untFinanceiro, untFormaPagto, untFuncoes,
  untPrincipal, untPedido;

procedure TfrmPesquisa.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPesquisa.CarregaGrid;
begin
   frmFuncoes.ExecutaSQL(vComando, 'Abrir', qryPesquisa);
end;

procedure TfrmPesquisa.dbgPesquisaDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmPesquisa.dbgPesquisaDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if vTabela = 'MOVI_CONTA' then
  BEGIN
    if qryPesquisa.FieldByName('TIPO').AsString = 'C' then
      dbgPesquisa.Canvas.Brush.Color := clBlue;
    if qryPesquisa.FieldByName('TIPO').AsString = 'D' then
      dbgPesquisa.Canvas.Brush.Color := clRed;

    dbgPesquisa.Font.Color := clWhite;
    dbgPesquisa.Canvas.FillRect(Rect);
    dbgPesquisa.DefaultDrawDataCell(Rect,Field,State);
  END;
end;

procedure TfrmPesquisa.dbgPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 38 then
  begin
    // seta para cima, volta um registro
    qryPesquisa.Prior;
    key := 0;
  end
  else if key = 40 then
  begin
    // seta para baixo, avança um registro
    qryPesquisa.Next;
    key := 0;
  end;
end;

procedure TfrmPesquisa.dbgPesquisaTitleClick(Column: TColumn);
begin
  lblPesquisa.Caption := Column.Title.Caption;
  edtPesquisa.Clear;
  edtPesquisa.SetFocus;
  CarregaGrid;
end;

procedure TfrmPesquisa.edtPesquisaChange(Sender: TObject);
begin
  qryPesquisa.Filtered := False;
  qryPesquisa.Filter := lblPesquisa.caption +  ' like ' + QuotedStr('%' + edtPesquisa.Text + '%');
  qryPesquisa.Filtered := True;
end;

procedure TfrmPesquisa.FormataGrid;
begin
  if vTabela = 'MOVI_CONTA' then
  BEGIN
    dbgPesquisa.Columns[0].Width := 200;
    dbgPesquisa.Columns[1].Visible := False;
    pnlRodape.Visible := false;
    TFloatField(qryPesquisa.FieldByName('valor')).DisplayFormat:= '#,###,##0.00';
  END;
end;

procedure TfrmPesquisa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If key = VK_ESCAPE then
  Begin
    Close;
  end;
end;

procedure TfrmPesquisa.FormShow(Sender: TObject);
begin
  dbgPesquisa.DataSource := dtsPesquisa;
  CarregaGrid;

  if (vTabela = 'PRODUTO') OR (vTabela = 'FORMA_PAGTO') then
  BEGIN
    lblPesquisa.Caption := 'DESCRICAO';
    dbgPesquisa.Columns[1].Width := 150;
  END;
  if vTabela = 'FINANCEIRO' then
  BEGIN
    lblPesquisa.Caption := 'DATA_VENCIMENTO';
  END;
  if vTabela = 'CLIENTE' then
  BEGIN
    lblPesquisa.Caption := 'NOME';
  END;

  if vTabela = 'MOVI_CONTA' then
  BEGIN
    Caption := Caption + ' - Prévia de Caixa - Data -> ' + qryPesquisa.FieldByName('Data').AsString;
  END;

  edtPesquisa.SetFocus;
  FormataGrid;
end;

procedure TfrmPesquisa.Selecionar;
begin
  if vTabela = 'FINANCEIRO' then
  begin
    if vTela = 'FINANCEIRO' then
    BEGIN
      frmFinanceiro.edtNumero.Text := dbgPesquisa.Fields[0].Value;
      frmFinanceiro.PesquisaFinanceiro(True);
      frmFinanceiro.rdgrpTipo.ItemIndex := 0;
      frmFinanceiro.rdgrpTipo.Enabled := False;
    END;
  end

  //PESQUISA CLIENTE
  else if vTabela = 'CLIENTE' then
  begin
    if vTela = 'BAIXA' then
    BEGIN
      frmBaixaConsulta.edtCodCliente.Text :=  dbgPesquisa.Fields[0].Value;
      frmBaixaConsulta.PesquisaCliente(True);
    END
    ELSE if vTela = 'FINANCEIRO' then
    BEGIN
      frmFinanceiro.edtCliente.Text := dbgPesquisa.Fields[0].Value;
      frmFinanceiro.PesquisaCliente(True);
    END
    else if vTela = 'CADASTRO' then
    BEGIN
      frmCadastro.edtCodigo.Text :=  dbgPesquisa.Fields[0].Value;
      frmCadastro.PesquisaBD(True);
    END;
  end

  //PESQUISA FORMA DE PAGAMENTO
  else if vTabela = 'FORMA_PAGTO' then
  begin
    if vTela = 'BAIXA' then
    BEGIN
      frmBaixaConsulta.edtCodFormaPagto.Text :=  dbgPesquisa.Fields[0].Value;
      frmBaixaConsulta.PesquisaFormaPagto(True);
    END
    ELSE if vTela = 'FINANCEIRO' then
    BEGIN
      frmFinanceiro.edtFormaPagto.Text := dbgPesquisa.Fields[0].Value;
      frmFinanceiro.PesquisaFormaPagto(True);
    END
    ELSE if vTela = 'CADASTRO' then
    BEGIN
      frmCadastro.edtCodigo.Text :=  dbgPesquisa.Fields[0].Value;
      frmCadastro.PesquisaBD(True);
    END;

  ENd

  //PESQUISA FORMA DE PRODUTO
  else if vTabela = 'PRODUTO' then
  begin
    if vTela = 'CADASTRO' then
    BEGIN
      frmCadastro.edtCodigo.Text :=  dbgPesquisa.Fields[0].Value;
      frmCadastro.PesquisaBD(True);
    END
    ELSE if vTela = 'PEDIDO' then
    BEGIN
      frmPedido.edtProduto.Text :=  dbgPesquisa.Fields[0].Value;
      frmPedido.PesquisaProduto(True);
    END;

  ENd;

  close;
end;

end.
