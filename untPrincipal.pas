unit untPrincipal;

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
  Vcl.StdCtrls, FireDAC.Phys.IBWrapper, FireDAC.Phys.IBBase, DateUtils,
  UCrpeClasses, UCrpe32, SHELLAPI;

type
  TfrmPrincipal = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    pnlPrincipal: TPanel;
    ToolBar2: TToolBar;
    btnCliente: TSpeedButton;
    ToolButton2: TToolButton;
    btnFormaPagto: TSpeedButton;
    ToolButton3: TToolButton;
    btnBaixaConsulta: TSpeedButton;
    btnFinanceiro: TSpeedButton;
    Memo1: TMemo;
    FDIBBackup1: TFDIBBackup;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    ToolButton4: TToolButton;
    btnBackup: TSpeedButton;
    Crpe1: TCrpe;
    grpRelatorioFinanceiro: TGroupBox;
    lblAte: TLabel;
    rdTipos: TRadioGroup;
    edtDtInicio: TDateTimePicker;
    edtDtFim: TDateTimePicker;
    btnImprimir: TBitBtn;
    lblStatusCaixa: TLabel;
    btnPedido: TSpeedButton;
    btnProduto: TSpeedButton;
    btnSinc: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnFormaPagtoClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure btnFinanceiroClick(Sender: TObject);
    procedure btnBaixaConsultaClick(Sender: TObject);
    procedure FDIBBackup1Progress(ASender: TFDPhysDriverService;
      const AMessage: string);
    procedure btnBackupClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnPedidoClick(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure btnSincClick(Sender: TObject);
  private
    { Private declarations }
    procedure CarregaConfig;
  public
    { Public declarations }
    vCaminhoBD : string;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses untDMCredit, untFormaPagto, untFinanceiro, untBaixaConsulta, untFuncoes,
  untPesquisa, untPedido, untAbreCaixa;


procedure TfrmPrincipal.btnBackupClick(Sender: TObject);
begin
  try
    FDPhysFBDriverLink1.DriverID := 'FB';
    FDPhysFBDriverLink1.VendorLib := ExtractFilePath( Application.ExeName )+'fbclient.dll';
    DM_CREDIT.FDConexao.Connected := False;

    FDIBBackup1.UserName := DM_CREDIT.FDConexao.Params.Values['User_Name'];
    FDIBBackup1.Password := DM_CREDIT.FDConexao.Params.Values['Password'];
    FDIBBackup1.Database := UpperCase(DM_CREDIT.FDConexao.Params.Values['database']);
    FDIBBackup1.Protocol := ipLocal;
    FDIBBackup1.Verbose := True;
    FDIBBackup1.Host := 'localhost';
    FDIBBackup1.BackupFiles.Clear;
    FDIBBackup1.BackupFiles.Add(ExtractFilePath( Application.ExeName )+'BACKUP.fbk');
    FDIBBackup1.Backup;
    MessageDlg('Backup realizado com sucesso!', mtInformation, [mbOK], 0);

    except on E: Exception do
    begin
     MessageDlg('Erro ao realizar backup!' + sLineBreak + e.Message, mtInformation, mbOKCancel, 0);
    end;
  end;
  
end;

procedure TfrmPrincipal.btnBaixaConsultaClick(Sender: TObject);
begin
  frmBaixaConsulta := TfrmBaixaConsulta.Create(Self);
  try
    frmBaixaConsulta.ShowModal
  finally
    frmBaixaConsulta.Release;
  end;
end;

procedure TfrmPrincipal.btnClienteClick(Sender: TObject);
begin
  frmCadastro := TfrmCadastro.Create(Self);
  try
    frmCadastro.vTela := 'CLIENTE';
    frmCadastro.ShowModal
  finally
    frmCadastro.Release;
  end;
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.btnSincClick(Sender: TObject);
begin
  ShellExecute(Handle, 'open', pchar('SyncCredit.exe'), nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmPrincipal.CarregaConfig;
var
  vModuloFin, vModuloVendas : String;
begin
  frmFuncoes.ExecutaSQL('Select * from CONFIG', 'Abrir', DM_CREDIT.qryConfig);
  vModuloFin := DM_CREDIT.qryConfig.FieldByName('modulo_financeiro').AsString;
  vModuloVendas := DM_CREDIT.qryConfig.FieldByName('modulo_pedido').AsString;
  if (vModuloVendas = 'S') and (vModuloFin = 'N') then
  begin
    btnFinanceiro.Visible := False;
    btnBaixaConsulta.Visible := false;
    btnPedido.Visible := True;
    btnProduto.Visible := True;
    grpRelatorioFinanceiro.Visible := False;
    lblStatusCaixa.Visible := True;
  end
  else if (vModuloVendas = 'N') and (vModuloFin = 'S') then
  begin
    btnFinanceiro.Visible := True;
    btnBaixaConsulta.Visible := True;
    btnPedido.Visible := False;
    btnProduto.Visible := False;
    grpRelatorioFinanceiro.Visible := True;
    lblStatusCaixa.Visible := False;
  end
  else if (vModuloVendas = 'S') and (vModuloFin = 'S') then
  begin
    btnFinanceiro.Visible := True;
    btnBaixaConsulta.Visible := True;
    btnPedido.Visible := True;
    btnProduto.Visible := True;
    grpRelatorioFinanceiro.Visible := True;
    lblStatusCaixa.Visible := True;
  end;

  if DM_CREDIT.qryConfig.FieldByName('CAIXAABERTO').AsString = 'S' THEN
    lblStatusCaixa.Caption := 'CAIXA ABERTO'
  else
    lblStatusCaixa.Caption := 'CAIXA FECHADO';

end;

procedure TfrmPrincipal.btnFormaPagtoClick(Sender: TObject);
begin
  frmCadastro := TfrmCadastro.Create(Self);
  try
    frmCadastro.vTela := 'FORMA_PAGTO';
    frmCadastro.ShowModal
  finally
    frmCadastro.Release;
  end;
end;

procedure TfrmPrincipal.btnImprimirClick(Sender: TObject);
begin
  Crpe1.DiscardSavedData;

  if rdTipos.ItemIndex = 0 then  Crpe1.ReportName := 'Relatorio\FinEM.rpt'
  else if rdTipos.ItemIndex = 1 then Crpe1.ReportName := 'Relatorio\FinVC.rpt'
  else if rdTipos.ItemIndex = 2 then Crpe1.ReportName := 'Relatorio\FinPG.rpt';

  Crpe1.ParamByName('DTINICIO', '').CurrentValue := DateToStr(edtDtInicio.Date);
  Crpe1.ParamByName('DTFIM', '').CurrentValue := DateToStr(edtDtFim.Date);

  Crpe1.Execute;
  Crpe1.SetFocus;
end;

procedure TfrmPrincipal.btnPedidoClick(Sender: TObject);
begin
  if DM_CREDIT.qryConfig.FieldByName('caixaaberto').AsString = 'N' then
  begin
    frmAbreCaixa := TfrmAbreCaixa.Create(Self);
    try
      frmAbreCaixa.ShowModal
    finally
      frmAbreCaixa.Release;
    end;
  end
  else
  begin
    frmPedido := TfrmPedido.Create(Self);
    try
      frmPedido.ShowModal
    finally
      frmPedido.Release;
    end;
  end;
end;

procedure TfrmPrincipal.btnProdutoClick(Sender: TObject);
begin
  frmCadastro := TfrmCadastro.Create(Self);
  try
    frmCadastro.vTela := 'PRODUTO';
    frmCadastro.ShowModal
  finally
    frmCadastro.Release;
  end;
end;

procedure TfrmPrincipal.FDIBBackup1Progress(ASender: TFDPhysDriverService;
  const AMessage: string);
begin
  Memo1.Lines.Add(AMessage);
end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
var
  vCaptionAntiga : string;
begin
  Memo1.Clear;
  vCaptionAntiga := Caption;
  Caption := Caption + ' - Estabelecendo conexão com o banco de dados...';
  while not DM_CREDIT.FDConexao.Connected do
  begin
    if FileExists( ExtractFilePath( Application.ExeName ) + 'CFG.ini' ) then // Testa Existência do arquivo
    begin                    { ENDEREÇO DO ARQUIVO }                  { NOME }
      with  TIniFile.Create( ExtractFilePath( Application.ExeName ) + 'CFG.ini' ) do // Cria a estância do Objeto em Memória.
      begin                                { SEÇÃO }    { CHAVE }        { VALOR PADRAO}
        vCaminhoBD := ReadString('CAMINHOS', 'BD', ''); // ReadString   - Lê um parâmetro como String;
        Free;
      end;
    end
    else
    begin
      ShowMessage( 'Arquivo Ini Não Encontrado!!!' );
    end;

    DM_CREDIT.FDConexao.Params.Values['database'] :=  vCaminhoBD;

    try
      DM_CREDIT.FDConexao.Connected := True;
    except
      DM_CREDIT.FDConexao.Connected := False;
    end;

  end;

  CarregaConfig;

  edtDtInicio.Date := StartOfTheMonth(Date);
  edtDtFim.Date := EndOfTheMonth(Date);

  Caption := vCaptionAntiga;
end;

procedure TfrmPrincipal.btnFinanceiroClick(Sender: TObject);
begin
  frmFinanceiro := TfrmFinanceiro.Create(Self);
  try;
    frmFinanceiro.ShowModal
  finally
    frmFinanceiro.Release;
  end;
end;

end.
