unit uPedidoController;

interface

uses
  uPedidoClass, uDetalhePedidoClass, System.Generics.Collections, System.SysUtils,
  Data.DBXCommon;

type
  TPedidoController = class
  private
  public
    function getPedido(iNumPedido: integer): TPedido;
    function getPedidos: OleVariant;

    procedure Inserir(var objPedido: TPedido; const objItens: TList<TDetalhePedido>);
    procedure Atualizar(var objPedido: TPedido; const objItens: TList<TDetalhePedido>);

  end;

implementation

{ TPedidoController }

uses uDAOClass;

function TPedidoController.getPedido(iNumPedido: integer): TPedido;
begin

end;

function TPedidoController.getPedidos: OleVariant;
begin

end;

procedure TPedidoController.Inserir(var objPedido: TPedido; const objItens: TList<TDetalhePedido>);
var
  iNumPedido: integer;
  objDA: TDataAcess;
  Trans: TDBXTransaction;
  objItem: TDetalhePedido;
begin
  //if objPedido.NumPedido = 0 then
  //  raise Exception.Create('Pedido sem N�mero');

  if objPedido.ClienteId = 0 then
    raise Exception.Create('Informe o Cliente');

  if (objItens.Count = 0) then
    raise Exception.Create('Selecione os itens para o Pedido');


  objDA := TDataAcess.Create;

  Trans := objDA.Conn.BeginTransaction(TDBXIsolations.ReadCommitted);

  try
    iNumPedido := objPedido.GetNextNumPedido;
    objPedido.NumPedido := iNumPedido;
    objPedido.Inserir;

    for objItem in objItens do
    begin
       objItem.NumPedido := iNumPedido;
       objItem.ProdutoId := objItem.ProdutoId;
       objItem.Inserir;
    end;


    objDA.Conn.CommitFreeAndNil(Trans);
  except
     on E: Exception do
     begin
       objDA.Conn.RollbackFreeAndNil(Trans);
       raise Exception.Create(E.Message);
     end;
  end;
end;

procedure TPedidoController.Atualizar(var objPedido: TPedido; const objItens: TList<TDetalhePedido>);
var
  objDA: TDataAcess;
  Trans: TDBXTransaction;
  objItem: TDetalhePedido;
begin
  //if objPedido.NumPedido = 0 then
  //  raise Exception.Create('Pedido sem N�mero');

  if objPedido.ClienteId = 0 then
    raise Exception.Create('Informe o Cliente');

  if (objItens.Count = 0) then
    raise Exception.Create('Selecione os itens para o Pedido');


  objDA := TDataAcess.Create;

  Trans := objDA.Conn.BeginTransaction(TDBXIsolations.ReadCommitted);

  try
    objPedido.Atualizar;

    objPedido.LimpaDetalhes;

    for objItem in objItens do
    begin
       objItem.NumPedido := objPedido.NumPedido;;
       objItem.ProdutoId := objItem.ProdutoId;
       objItem.Inserir;
    end;


    objDA.Conn.CommitFreeAndNil(Trans);
  except
     on E: Exception do
     begin
       objDA.Conn.RollbackFreeAndNil(Trans);
       raise Exception.Create(E.Message);
     end;
  end;
end;

end.
