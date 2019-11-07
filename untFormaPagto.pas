unit untFormaPagto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.ComCtrls,
  Vcl.ButtonGroup, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmCadastro = class(TForm)
    pnlPrincipal: TPanel;
    qryCadastro: TFDQuery;
    dtsCadastro: TDataSource;
    edtNome: TDBEdit;
    edtTel: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    lblTelefone: TLabel;
    edtCodigo: TEdit;
    pnlBotoes: TPanel;
    btnFechar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnGravar: TSpeedButton;
    btnNovo: TSpeedButton;
    chkAtivo: TDBCheckBox;
    edtEstoque: TDBEdit;
    lblEstoque: TLabel;
    edtVlrUnit: TDBEdit;
    lblVlrUnit: TLabel;
    btnPesquisa: TBitBtn;
    edtCPF: TDBEdit;
    lblCPF: TLabel;
    edtPDF: TEdit;
    btnBuscaPDF: TBitBtn;
    OpenDialog1: TOpenDialog;
    qryAuxiliar: TFDQuery;
    dtAuxiliar: TDataSource;
    btnRecupPDF: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtCodigoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnPesquisaClick(Sender: TObject);
    procedure edtVlrUnitClick(Sender: TObject);
    procedure btnBuscaPDFClick(Sender: TObject);
    procedure btnRecupPDFClick(Sender: TObject);
  private
    { Private declarations }
    procedure CarregaCamposCliente;
    procedure LimpaCampos;
  public
    { Public declarations }
    vTela : string;
    fNovo : Boolean;
    function PesquisaBD(vStatus : Boolean) : Boolean;
  end;

var
  frmCadastro: TfrmCadastro;

implementation

{$R *.dfm}

uses untDMCredit, untFuncoes, untPesquisa;
procedure TfrmCadastro.btnPesquisaClick(Sender: TObject);
begin
  PesquisaBD(False);
end;

procedure TfrmCadastro.btnBuscaPDFClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    edtPDF.Text := OpenDialog1.FileName;
  end;
end;

procedure TfrmCadastro.btnRecupPDFClick(Sender: TObject);
var
   vCaminho : String;
begin
  if edtCodigo.Text <> '' then
  begin
    vCaminho := ExtractFilePath(Application.ExeName);
    qryAuxiliar.Close;
    qryAuxiliar.SQL.Clear;
    qryAuxiliar.SQL.Add('Select PDF from CLIENTE Where ID = ' + edtCodigo.Text);
    qryAuxiliar.Open;
    TBlobField(qryAuxiliar.FieldByName('PDF')).SaveToFile(vCaminho + PathDelim + 'BoletoNu.pdf');
    ShowMessage('PDF gravado com sucesso!');
  end
  else
    edtCodigo.SetFocus;
end;

procedure TfrmCadastro.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastro.btnGravarClick(Sender: TObject);
begin
  if (edtCodigo.Text <> '') then
  begin
    qryCadastro.FieldByName('ID').AsString := edtCodigo.Text;
    qryCadastro.Post;
    frmFuncoes.Novo(vTela, 'Fim');

    fNovo := False;


    qryAuxiliar.Close;
    qryAuxiliar.SQL.Clear;
    qryAuxiliar.SQL.Add('Update CLIENTE SET PDF = :PDF Where ID = ' + edtCodigo.Text);
    qryAuxiliar.ParamByName('pdf').LoadFromFile(edtPDF.Text, ftBlob);
    qryAuxiliar.Execute;

    

    btnNovo.Enabled := True;
    btnGravar.Enabled := True;
    btnExcluir.Enabled := True;
    btnCancelar.Enabled := True;
    edtCodigo.Enabled := True;

    ShowMessage('Cadastro efetuado com sucesso!');
  end
  else
  begin
    ShowMessage('Informe o código!');
    edtCodigo.SetFocus;
    LimpaCampos;
  end;
end;

procedure TfrmCadastro.btnNovoClick(Sender: TObject);
begin
  fNovo := True;
  edtCodigo.SetFocus;
  LimpaCampos;
  edtCodigo.Enabled := false;
  edtNome.SetFocus;

  btnNovo.Enabled := False;
  btnGravar.Enabled := True;
  btnExcluir.Enabled := False;
  btnCancelar.Enabled := True;

  edtCodigo.Text := IntToStr(frmFuncoes.Novo(vTela, ''));
  qryCadastro.Append;

  if vTela = 'CLIENTE' then
  BEGIN
    qryCadastro.FieldByName('TELEFONE').EditMask := '(99)99999-9999';
  END;

  if vTela = 'PRODUTO' then
  BEGIN
    qryCadastro.FieldByName('Ativo').AsString := 'S';
    qryCadastro.FieldByName('ESTOQUE').AsString := '0';
    qryCadastro.FieldByName('VLR_UNITARIO').AsString := '0';
    TFMTBCDField(edtVlrUnit.Field).DisplayFormat   := '###,####,R$###,##0.00';
  END;

end;

procedure TfrmCadastro.CarregaCamposCliente;
begin
  if vTela = 'CLIENTE' then
  BEGIN
    edtNome.DataField := 'NOME';
    edtTel.DataField := 'TELEFONE';
    edtCPF.DataField := 'CPF';
    qryCadastro.FieldByName('cpf').EditMask := '999.999.999-99';
  END
  ELSE if vTela = 'FORMA_PAGTO' then
  BEGIN
    edtNome.DataField := 'DESCRICAO';
  END
  ELSE if vTela = 'PRODUTO' then
  BEGIN
    edtNome.DataField := 'DESCRICAO';
    chkAtivo.DataField := 'ATIVO';
    edtVlrUnit.DataField := 'VLR_UNITARIO';
    edtEstoque.DataField := 'ESTOQUE';
  END;

end;

procedure TfrmCadastro.edtCodigoExit(Sender: TObject);
begin
  if (edtCodigo.Text <> '') and (fNovo = False) then
  begin
    PesquisaBD(True);
  end;
end;

procedure TfrmCadastro.edtVlrUnitClick(Sender: TObject);
begin
  edtVlrUnit.SelectAll;
end;

procedure TfrmCadastro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
  Begin
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfrmCadastro.FormShow(Sender: TObject);
begin
  LimpaCampos;
  fNovo := False;

  qryCadastro.Close;
  qryCadastro.SQL.Clear;
  if vTela = 'FORMA_PAGTO' then
  BEGIN
    Caption := Caption + ' Forma de Pagamento';
    edtTel.Visible := False;
    lblTelefone.Visible := False;
    chkAtivo.Visible := False;
    lblEstoque.Visible := False;
    edtEstoque.Visible := False;
    lblVlrUnit.Visible := False;
    edtVlrUnit.Visible := False;
    edtCPF.Visible := False;
    lblCPF.Visible := False;
    qryCadastro.SQL.Add('Select * from FORMA_PAGTO where ID IS NULL');
  END
  else
  if vTela = 'CLIENTE' then
  begin
    Caption := Caption + ' Cliente';
    edtTel.Visible := True;
    lblTelefone.Visible := True;
    edtCPF.Visible := True;
    lblCPF.Visible := True;
    chkAtivo.Visible := False;
    lblEstoque.Visible := False;
    edtEstoque.Visible := False;
    lblVlrUnit.Visible := False;
    edtVlrUnit.Visible := False;
    edtPDF.Visible := True;
    btnRecupPDF.Visible := True;
    btnBuscaPDF.Visible := True;

    qryCadastro.SQL.Add('Select * from CLIENTE where ID IS NULL');
  end
  else
  if vTela = 'PRODUTO' then
  begin
    Caption := Caption + ' Produto';
    edtTel.Visible := False;
    lblTelefone.Visible := False;
    chkAtivo.Visible := True;
    lblEstoque.Visible := True;
    edtEstoque.Visible := True;
    lblVlrUnit.Visible := True;
    edtVlrUnit.Visible := True;
    edtCPF.Visible := False;
    lblCPF.Visible := False;
    qryCadastro.SQL.Add('Select * from PRODUTO where ID IS NULL');
  end;
  qryCadastro.OpenOrExecute;
  CarregaCamposCliente;
  edtCodigo.SetFocus;
end;

procedure TfrmCadastro.LimpaCampos;
begin
  edtCodigo.Clear;
  edtNome.Clear;
  edtTel.Clear;
end;

function TfrmCadastro.PesquisaBD(vStatus: Boolean): Boolean;
begin
  if vStatus = True then
  begin
    qryCadastro.Close;
    qryCadastro.SQL.Clear;
    qryCadastro.SQL.Add('Select * from ' + vTela + ' where ID = ' + QuotedStr(edtCodigo.Text));
    qryCadastro.OpenOrExecute;

    if qryCadastro.RecordCount = 0 then
    begin
      ShowMessage('Registro não encontrado');
      LimpaCampos;
      edtCodigo.SetFocus;
    end
    else
    BEGIN
      CarregaCamposCliente;
      qryCadastro.Edit;
    END;

  end
  else
  begin
    frmPesquisa := TfrmPesquisa.Create(Self);
    try
      frmPesquisa.vTela := 'CADASTRO';
      if vTela = 'PRODUTO' then
      BEGIN
        frmPesquisa.vTabela := 'PRODUTO';
        frmPesquisa.vComando := 'Select ID, DESCRICAO, VLR_UNITARIO, ESTOQUE FROM PRODUTO ORDER BY DESCRICAO';
      END
      ELSE if vTela = 'FORMA_PAGTO' then
      BEGIN
        frmPesquisa.vTabela := 'FORMA_PAGTO';
        frmPesquisa.vComando := 'Select * FROM FORMA_PAGTO ORDER BY DESCRICAO';
      END
      ELSE if vTela = 'CLIENTE' then
      BEGIN
        frmPesquisa.vTabela := 'CLIENTE';
        frmPesquisa.vComando := 'Select * FROM CLIENTE ORDER BY NOME';
      END;

      frmPesquisa.ShowModal
    finally
      frmPesquisa.Release;
    end;
  end;
end;

end.


