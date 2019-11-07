program SysCredit;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untDMCredit in 'untDMCredit.pas' {DM_CREDIT: TDataModule},
  untFormaPagto in 'untFormaPagto.pas' {frmCadastro},
  untFuncoes in 'untFuncoes.pas' {frmFuncoes},
  untFinanceiro in 'untFinanceiro.pas' {frmFinanceiro},
  untPesquisa in 'untPesquisa.pas' {frmPesquisa},
  untBaixaConsulta in 'untBaixaConsulta.pas' {frmBaixaConsulta},
  untAbreCaixa in 'untAbreCaixa.pas' {frmAbreCaixa},
  untPedido in 'untPedido.pas' {frmPedido},
  untRetirada in 'untRetirada.pas' {frmRetirada};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM_CREDIT, DM_CREDIT);
  Application.CreateForm(TfrmFuncoes, frmFuncoes);
  Application.CreateForm(TfrmFinanceiro, frmFinanceiro);
  Application.CreateForm(TfrmPesquisa, frmPesquisa);
  Application.CreateForm(TfrmBaixaConsulta, frmBaixaConsulta);
  Application.CreateForm(TfrmAbreCaixa, frmAbreCaixa);
  Application.CreateForm(TfrmPedido, frmPedido);
  Application.CreateForm(TfrmRetirada, frmRetirada);
  Application.Run;
end.
