unit untAbreCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmAbreCaixa = class(TForm)
    btnConfirmar: TSpeedButton;
    cmbxConta: TDBLookupComboBox;
    edtSuprimento: TEdit;
    lblSuprimento: TLabel;
    Panel1: TPanel;
    dtsAuxiliar: TDataSource;
    qryAuxiliar: TFDQuery;
    lblAbreCaixa: TLabel;
    btnFechar: TSpeedButton;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
    function TestaCampos : Boolean;
  public
    { Public declarations }
  end;

var
  frmAbreCaixa: TfrmAbreCaixa;

implementation

{$R *.dfm}

uses untFuncoes, untDMCredit, untPedido;

procedure TfrmAbreCaixa.btnConfirmarClick(Sender: TObject);
begin
  if TestaCampos then
  begin
    if frmFuncoes.GravaMoviCaixa(cmbxConta.KeyValue, '', 'Abertura de Caixa', 'C', StrToFloat(edtSuprimento.Text)) then
    begin
      DM_CREDIT.qryConfig.Refresh;
      frmPedido := TfrmPedido.Create(Self);
      try
        frmPedido.vIdCaixa := cmbxConta.KeyValue;
        frmPedido.ShowModal;
      finally
        frmPedido.Release;
        Close;
      end;
    end;

  end;
end;

procedure TfrmAbreCaixa.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAbreCaixa.FormActivate(Sender: TObject);
begin
  frmFuncoes.ExecutaSQL('Select * from CONTA order by DESCRICAO', 'Abrir', qryAuxiliar);
  cmbxConta.ListField := 'DESCRICAO';
  cmbxConta.KeyField := 'ID';
end;

procedure TfrmAbreCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    qryAuxiliar.Close;
    edtSuprimento.Text := '0,00';
    close;
  end;
end;

function TfrmAbreCaixa.TestaCampos: Boolean;
var
  vResultado : Boolean;
begin
  vResultado := True;
  if cmbxConta.KeyField = '' then
  begin
    Application.MessageBox('Informa a conta!','SysCredit', MB_ICONEXCLAMATION);
    vResultado := False;
  end
  else if (edtSuprimento.Text = '') or (strtofloat(edtSuprimento.Text) = 0) then
  begin
    Application.MessageBox('Informa o valor!','SysCredit', MB_ICONEXCLAMATION);
    vResultado := False;
  end;

  Result := vResultado;
end;

end.
