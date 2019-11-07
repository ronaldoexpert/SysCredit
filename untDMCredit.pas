unit untDMCredit;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.IBWrapper, FireDAC.Phys.IBBase;

type
  TDM_CREDIT = class(TDataModule)
    FDConexao: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    qryConsulta: TFDQuery;
    dtsConsulta: TDataSource;
    qryCliente: TFDQuery;
    dtsCliente: TDataSource;
    qryAuxiliar: TFDQuery;
    dtsAuxiliar: TDataSource;
    qryConfig: TFDQuery;
    dtsConfig: TDataSource;
    dtsAutoincre: TDataSource;
    qryAutoincre: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_CREDIT: TDM_CREDIT;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses untBaixaConsulta, untFinanceiro, untFormaPagto, untFuncoes, untPesquisa,
  untPrincipal;

{$R *.dfm}

end.
