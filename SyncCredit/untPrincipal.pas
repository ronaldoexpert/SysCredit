unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, DBAccess, MyAccess, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet, IniFiles, MemDS,
  Datasnap.DBClient;

type
  TfrmPrincipal = class(TForm)
    chkCliente: TCheckBox;
    chkFormaPagto: TCheckBox;
    chkFornecedor: TCheckBox;
    chkFinanceiro: TCheckBox;
    btnSincronizar: TButton;
    ProgressBar1: TProgressBar;
    cnnBDOnline: TMyConnection;
    cnnCredit: TFDConnection;
    qryCredit: TFDQuery;
    dtsCredit: TDataSource;
    Label2: TLabel;
    qryExporta: TMyQuery;
    qryAuxiliar: TFDQuery;
    dtAuxiliar: TDataSource;
    procedure btnSincronizarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    vCaminhoBD : String;
    procedure ExportaClientes;
    procedure ExportaFornecedores;
    procedure ExportaFormaPagto;
    procedure ExportaFinanceiro;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnSincronizarClick(Sender: TObject);
begin
  Label2.Caption := 'Sincornizando...';
  ProgressBar1.Position := 0;

  if chkCliente.Checked then
    ExportaClientes;

  if chkFornecedor.Checked then
    ExportaFornecedores;

  if chkFormaPagto.Checked then
    ExportaFormaPagto;

  if chkFinanceiro.Checked then
    ExportaFinanceiro;

  Label2.Caption := 'Sincroniza��o Finalizada...';
end;

procedure TfrmPrincipal.ExportaClientes;
begin
  qryCredit.Close;
  qryCredit.SQL.Clear;
  qryCredit.SQL.Add('Select * from CLIENTE');
  qryCredit.Open;
  qryCredit.First;

  ProgressBar1.Max := qryCredit.RecordCount;
  while NOT qryCredit.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    qryExporta.Close;
    qryExporta.SQL.Clear;
    qryExporta.SQL.Add('Select * from CLIENTE where id = ' + qryCredit.FieldByName('id').AsString);
    qryExporta.Open;

    if qryExporta.RecordCount > 0 then
      qryExporta.Edit
    else
    begin
      qryExporta.Insert;
      qryExporta.FieldByName('id').AsString := qryCredit.FieldByName('id').AsString;
    end;
    qryExporta.FieldByName('nome').AsString := qryCredit.FieldByName('nome').AsString;
    qryExporta.FieldByName('telefone').AsString := qryCredit.FieldByName('telefone').AsString;
    qryExporta.FieldByName('CPF').AsString := qryCredit.FieldByName('CPF').AsString;
    qryExporta.FieldByName('PDF').AsString := qryCredit.FieldByName('PDF').AsString;

    qryExporta.Post;

    qryCredit.Next;
  end;
end;

procedure TfrmPrincipal.ExportaFinanceiro;
begin
  qryCredit.Close;
  qryCredit.SQL.Clear;
  qryCredit.SQL.Add('Select * from FINANCEIRO WHERE EXPORTADO = ' + QuotedStr('N'));
  qryCredit.Open;
  qryCredit.First;
  ProgressBar1.Max := qryCredit.RecordCount;

  {qryExporta.Close;
  qryExporta.SQL.Clear;
  qryExporta.SQL.Add('DELETE FROM FINANCEIRO');
  qryExporta.Execute;}

  while NOT qryCredit.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    qryExporta.Close;
    qryExporta.SQL.Clear;
    qryExporta.SQL.Add('Select * from FINANCEIRO where id = ' + qryCredit.FieldByName('id').AsString);
    qryExporta.Open;

    if qryExporta.RecordCount = 0 then
    begin
      qryExporta.Insert;
      qryExporta.FieldByName('id').AsString := qryCredit.FieldByName('id').AsString;
    end
    ELSE
      qryExporta.Edit;

    qryExporta.FieldByName('NUMERO').AsString := qryCredit.FieldByName('NUMERO').AsString;
    qryExporta.FieldByName('ORIGEM').AsString := qryCredit.FieldByName('ORIGEM').AsString;
    qryExporta.FieldByName('DATA_EMISSAO').AsString := qryCredit.FieldByName('DATA_EMISSAO').AsString;
    qryExporta.FieldByName('DATA_VENCIMENTO').AsString := qryCredit.FieldByName('DATA_VENCIMENTO').AsString;
    qryExporta.FieldByName('DATA_PAGAMENTO').AsString := qryCredit.FieldByName('DATA_PAGAMENTO').AsString;
    qryExporta.FieldByName('ID_CLIENTE').AsString := qryCredit.FieldByName('ID_CLIENTE').AsString;
    qryExporta.FieldByName('FORMA_PAGTO').AsString := qryCredit.FieldByName('FORMA_PAGTO').AsString;
    qryExporta.FieldByName('VALOR').AsFloat := qryCredit.FieldByName('VALOR').AsFloat;
    qryExporta.FieldByName('VALOR_PAGO').AsFloat := qryCredit.FieldByName('VALOR_PAGO').AsFloat;
    qryExporta.FieldByName('PARCELADO').AsString := qryCredit.FieldByName('PARCELADO').AsString;
    qryExporta.FieldByName('PARCELAS').AsString := qryCredit.FieldByName('PARCELAS').AsString;
    qryExporta.FieldByName('DOCORIGEM').AsString := qryCredit.FieldByName('DOCORIGEM').AsString;
    qryExporta.FieldByName('OBSERVACAO').AsString := qryCredit.FieldByName('OBSERVACAO').AsString;
    qryExporta.Post;

    qryAuxiliar.Close;
    qryAuxiliar.SQL.Clear;
    qryAuxiliar.SQL.Add('UPDATE FINANCEIRO SET EXPORTADO = ' + QuotedStr('S') + ' WHERE ID = ' + qryCredit.FieldByName('id').AsString);
    qryAuxiliar.Execute;

    qryCredit.Next;
  end;
end;

procedure TfrmPrincipal.ExportaFormaPagto;
begin
  qryCredit.Close;
  qryCredit.SQL.Clear;
  qryCredit.SQL.Add('Select * from FORMA_PAGTO');
  qryCredit.Open;
  qryCredit.First;

  ProgressBar1.Max := qryCredit.RecordCount;
  while NOT qryCredit.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    qryExporta.Close;
    qryExporta.SQL.Clear;
    qryExporta.SQL.Add('Select * from FORMA_PAGTO where id = ' + qryCredit.FieldByName('id').AsString);
    qryExporta.Open;

    if qryExporta.RecordCount > 0 then
      qryExporta.Edit
    else
    begin
      qryExporta.Insert;
      qryExporta.FieldByName('id').AsString := qryCredit.FieldByName('id').AsString;
    end;
    qryExporta.FieldByName('DESCRICAO').AsString := qryCredit.FieldByName('DESCRICAO').AsString;
    qryExporta.Post;

    qryCredit.Next;
  end;

end;

procedure TfrmPrincipal.ExportaFornecedores;
begin
  qryCredit.Close;
  qryCredit.SQL.Clear;
  qryCredit.SQL.Add('Select * from FORNECEDOR');
  qryCredit.Open;
  qryCredit.First;

  ProgressBar1.Max := qryCredit.RecordCount;
  while NOT qryCredit.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    qryExporta.Close;
    qryExporta.SQL.Clear;
    qryExporta.SQL.Add('Select * from FORNECEDOR where id = ' + qryCredit.FieldByName('id').AsString);
    qryExporta.Open;

    if qryExporta.RecordCount > 0 then
      qryExporta.Edit
    else
    begin
      qryExporta.Insert;
      qryExporta.FieldByName('id').AsString := qryCredit.FieldByName('id').AsString;
    end;
    qryExporta.FieldByName('DESCRICAO').AsString := qryCredit.FieldByName('DESCRICAO').AsString;
    qryExporta.FieldByName('DATACAD').AsString := qryCredit.FieldByName('DATACAD').AsString;
    qryExporta.Post;

    qryCredit.Next;
  end;
end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
  while not cnnCredit.Connected do
  begin
    if FileExists( ExtractFilePath( Application.ExeName ) + 'CFG.ini' ) then // Testa Exist�ncia do arquivo
    begin                    { ENDERE�O DO ARQUIVO }                  { NOME }
      with  TIniFile.Create( ExtractFilePath( Application.ExeName ) + 'CFG.ini' ) do // Cria a est�ncia do Objeto em Mem�ria.
      begin                                { SE��O }    { CHAVE }        { VALOR PADRAO}
        vCaminhoBD := ReadString('CAMINHOS', 'BD', ''); // ReadString   - L� um par�metro como String;
        Free;
      end;
    end
    else
    begin
      ShowMessage( 'Arquivo Ini N�o Encontrado!!!' );
    end;

    cnnCredit.Params.Values['database'] :=  vCaminhoBD;

    try
      cnnCredit.Connected := True;
    except
      cnnCredit.Connected := False;
    end;
  end;
end;

end.