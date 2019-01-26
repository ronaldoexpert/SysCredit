unit untFuncoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmFuncoes = class(TForm)
    qryAuxiliar: TFDQuery;
    dtsAuxiliar: TDataSource;
    FDQueryAutoincre: TFDQuery;
    dtsAutoincre: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    function Novo(vTabela : string; vStatus : string) : Integer;
    function FormataNumero(vNumero : string) : string;
    function SomaMes(dData: TDateTime; xMeses: Integer; lCorrido: boolean): TDateTime;
    function MenorDataValida(Ano, Mes, Dia: Word): TDateTime;
    procedure ExecutaSQL(pComando : string; pAcao : String; vSQL : TFDQuery);
    function DataSQL(data,formato: string): string;
    function GravaMoviCaixa(vIdConta, vIdPedido, vHistorico, vTipo : String; vValor : real) : Boolean;

  end;

var
  frmFuncoes: TfrmFuncoes;

implementation

{$R *.dfm}

uses untDMCredit, untFormaPagto;

{ TfrmFuncoes }
function TfrmFuncoes.DataSQL(data, formato: string): string;
begin
   if formato = 'aaaa,mm,dd' then
    Result := data[7]+data[8]+data[9]+data[10]+','+ data[4]+data[5]+','+data[1]+data[2];
  if formato = 'mm,dd,aaaa' then
    Result := data[4]+data[5]+','+data[1]+ data[2]+','+data[7]+data[8]+data[9]+data[10];
  if formato = 'mm/dd/aaaa' then    // quando vai para sql
    Result := data[4]+data[5]+'/'+data[1]+ data[2]+'/'+data[7]+data[8]+data[9]+data[10];
  if formato = 'aaaa-mm-dd' then    // quando vai para sql
    Result := data[7]+data[8]+data[9]+data[10]+'-'+ data[4]+data[5]+'-'+data[1]+data[2];
end;

procedure TfrmFuncoes.ExecutaSQL(pComando, pAcao: String; vSQL: TFDQuery);
begin
  with vSQL do
  begin
    SQL.Clear;
    Close;
    SQL.Add(pComando);
    if pAcao = 'Abrir' then
      Open
    else
      ExecSQL;
  end;

end;

function TfrmFuncoes.FormataNumero(vNumero: string): string;
var
  vRetorno : string;
begin
  if Length(vNumero) = 1 then
  begin
    vRetorno := '00000' + vNumero;
  end
  else if Length(vNumero) = 2 then
  begin
    vRetorno := '0000' + vNumero;
  end
  else if Length(vNumero) = 3 then
  begin
    vRetorno := '000' + vNumero;
  end
  else if Length(vNumero) = 4 then
  begin
    vRetorno := '00' + vNumero;
  end
  else if Length(vNumero) = 5 then
  begin
    vRetorno := '0' + vNumero;
  end
  else if Length(vNumero) = 6 then
  begin
    vRetorno := vNumero;
  end;

  Result := vRetorno;
end;

function TfrmFuncoes.GravaMoviCaixa(vIdConta, vIdPedido, vHistorico,
  vTipo: String; vValor: real): Boolean;
var
  vResultado : Boolean;
begin
  qryAuxiliar.SQL.Clear;
  qryAuxiliar.Close;
  qryAuxiliar.SQL.Add('Select * from MOVI_CONTA WHERE ID IS NULL');
  qryAuxiliar.Open;
  qryAuxiliar.Insert;
  qryAuxiliar.FieldByName('id').AsInteger := Novo('MOVI_CONTA', 'Fim');
  qryAuxiliar.FieldByName('data').AsDateTime := Date;
  qryAuxiliar.FieldByName('id_conta').AsString := vIdConta;
  qryAuxiliar.FieldByName('id_pedido').AsString := vIdPedido;
  qryAuxiliar.FieldByName('historico').AsString := vHistorico;
  qryAuxiliar.FieldByName('tipo').AsString := vTipo;
  qryAuxiliar.FieldByName('valor').AsFloat := vValor;
  qryAuxiliar.Post;
  if qryAuxiliar.ApplyUpdates(-1) = 0 then
    vResultado := True
  else
    vResultado := False;

  Result := vResultado;
end;

function TfrmFuncoes.MenorDataValida(Ano, Mes, Dia: Word): TDateTime;
Var
  Continua : Boolean;
  DataAux : TDateTime;
begin
  Continua := True;
  DataAux := date;
  while Continua do
  Try
    DataAux := EncodeDate (Ano, Mes, Dia);
    Continua := False;
  Except
    Dec (Dia);
  End;
  MenorDataValida := DataAux;
end;

function TfrmFuncoes.Novo(vTabela: string; vStatus : string): Integer;
var
  vRetorno : Integer;
begin
  FDQueryAutoincre.SQL.Clear;
  FDQueryAutoincre.Close;
  FDQueryAutoincre.SQL.Add('Select * from AUTOINCRE where tabela = ' + QuotedStr(vTabela) +'');
  FDQueryAutoincre.OpenOrExecute;

  vRetorno := 1 + FDQueryAutoincre.FieldByName('SEQUENCIA').AsInteger;

  if vStatus = 'Fim' then
  BEGIN
    FDQueryAutoincre.SQL.Clear;
    FDQueryAutoincre.Close;
    FDQueryAutoincre.SQL.Add('UPDATE AUTOINCRE SET SEQUENCIA = SEQUENCIA + 1 where tabela = ' + QuotedStr(vTabela) +'');
    FDQueryAutoincre.ExecSQL;
  END;

  Result :=  vRetorno;
end;

function TfrmFuncoes.SomaMes(dData: TDateTime; xMeses: Integer;
  lCorrido: boolean): TDateTime;
var
  Ano, Mes, Dia : word;
  DataAux : TDateTime;
begin
  DecodeDate(dData, Ano, Mes, Dia);
  Mes := Mes + xMeses;
  Ano := Ano + (Mes DIV 12);
  Mes := Mes mod 12;
  IF Mes = 0 then
  begin
    Mes := 12;
    Ano := Ano -1;
  end;
  DataAux := MenorDataValida (Ano, Mes, Dia);
  if not lCorrido Then
  DataAux := DataAux - 1;
  SomaMes := DataAux;
end;

{
function TfrmLancReceberGrupo.MenorDataValida(Ano, Mes,
  Dia: Word): TDateTime;
Var
  Continua : Boolean;
  DataAux : TDateTime;
begin
  Continua := True;
  DataAux := date;
  while Continua do
  Try
    DataAux := EncodeDate (Ano, Mes, Dia);
    Continua := False;
  Except
    Dec (Dia);
  End;
  MenorDataValida := DataAux;
end;
}


end.
