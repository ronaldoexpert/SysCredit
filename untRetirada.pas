unit untRetirada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmRetirada = class(TForm)
    Panel1: TPanel;
    btnConfirmar: TSpeedButton;
    lblValor: TLabel;
    edtValor: TEdit;
    edtHistorico: TEdit;
    lblHistorico: TLabel;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LimpaCampos;
  end;

var
  frmRetirada: TfrmRetirada;

implementation

{$R *.dfm}

uses untFuncoes, untPrincipal, untDMCredit, untPedido;

procedure TfrmRetirada.btnConfirmarClick(Sender: TObject);
begin
  if edtHistorico.Text = 'Fechamento de Caixa' then
  begin
    if frmFuncoes.GravaMoviCaixa('1', '', 'Fechamento de Caixa', 'D', StrToFloat(edtValor.Text)) = True then
    begin
      frmFuncoes.ExecutaSQL('Update CONFIG set CAIXAABERTO = ' + QuotedStr('N'), 'Executar', DM_CREDIT.qryAuxiliar);
      frmPrincipal.lblStatusCaixa.Caption := 'CAIXA FECHADO';
      DM_CREDIT.qryConfig.Refresh;
      Close;
      frmPedido.Close;
    end
    else
    begin
      Application.MessageBox('Erro ao fazer fechamento de caixa.','SysCredit', MB_OK + MB_ICONWARNING);
      Close;
    end;
  end;
end;

procedure TfrmRetirada.FormShow(Sender: TObject);
begin
  if edtHistorico.Text = 'Fechamento de Caixa' then
    edtHistorico.Enabled := False;
end;

procedure TfrmRetirada.LimpaCampos;
begin
  edtValor.Text := '';
  edtHistorico.Text := '';
end;

end.
