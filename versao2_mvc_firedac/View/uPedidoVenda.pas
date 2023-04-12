unit uPedidoVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Datasnap.DBClient, Vcl.DBCtrls,
  System.Generics.Collections, Data.DBXMySQL, Data.SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Comp.UI;

type
  TfrmPedidoVenda = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dbgrdProdutos: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    btnBuscaCliente: TSpeedButton;
    edtCodCliente: TEdit;
    edtNomeCliente: TEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    edtCodProduto: TEdit;
    btnBuscaProduto: TSpeedButton;
    Label4: TLabel;
    edtQtde: TEdit;
    Label5: TLabel;
    edtValorUnit: TEdit;
    btnAddProduto: TSpeedButton;
    btnGravarPedido: TSpeedButton;
    cdsProdutos: TClientDataSet;
    cdsProdutosTempId: TIntegerField;
    cdsProdutosProdutoId: TIntegerField;
    cdsProdutosQuantidade: TIntegerField;
    cdsProdutosValorTotal: TFloatField;
    cdsProdutosValorUnitario: TFloatField;
    cdsProdutosDescricao: TStringField;
    cdsProdutosValorTotalPedido: TAggregateField;
    dtsProdutos: TDataSource;
    lblValorTotalPedido: TLabel;
    DBText1: TDBText;
    Label6: TLabel;
    edtNumPedido: TEdit;
    btnNovoPedido: TSpeedButton;
    btnBuscaPedido: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnCancelar: TSpeedButton;
    procedure edtCodProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure btnAddProdutoClick(Sender: TObject);
    procedure dbgrdProdutosKeyPress(Sender: TObject; var Key: Char);
    procedure cdsProdutosBeforeDelete(DataSet: TDataSet);
    procedure dbgrdProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorUnitKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCodClienteKeyPress(Sender: TObject; var Key: Char);
    procedure btnGravarPedidoClick(Sender: TObject);
    procedure btnNovoPedidoClick(Sender: TObject);
    procedure btnBuscaClienteClick(Sender: TObject);
    procedure btnBuscaProdutoClick(Sender: TObject);
    procedure btnBuscaPedidoClick(Sender: TObject);
    procedure edtCodClienteExit(Sender: TObject);
    procedure edtCodProdutoExit(Sender: TObject);
    procedure cdsProdutosAfterDelete(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    procedure ValidarCampo(Campo: TEdit; sDescricao: string);
    procedure clearData;
    procedure getPedido;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedidoVenda: TfrmPedidoVenda;

implementation

{$R *.dfm}

uses uProdutoController, uProdutoClass, uClienteClass, uDetalhePedidoClass,
  uPedidoController, uPedidoClass, uSearch;

procedure TfrmPedidoVenda.ValidarCampo(Campo: TEdit; sDescricao: string);
begin
  if (Trim(Campo.Text) = '') then
  begin
    Campo.SetFocus;
    raise Exception.Create('Campo obrig�t�rio: ' + sDescricao);
  end;
end;

procedure TfrmPedidoVenda.btnAddProdutoClick(Sender: TObject);
var
  objProd: TProduto;
begin
  ValidarCampo(edtCodProduto, 'C�digo do Produto');
  ValidarCampo(edtQtde, 'Quantidade');
  ValidarCampo(edtValorUnit, 'Valor Unit�rio');

  objProd := TProduto.Create(StrToInt(edtCodProduto.Text));

  if (not cdsProdutos.Active) then
    cdsProdutos.Open;

  if (not (cdsProdutos.State in [dsEdit])) then
    cdsProdutos.Append;

  cdsProdutosProdutoId.AsInteger := objProd.ProdutoId;
  cdsProdutosDescricao.asString := objProd.Descricao;
  cdsProdutosValorUnitario.AsFloat := StrToFloat(edtValorUnit.Text);
  cdsProdutosQuantidade.asInteger := StrToInt(edtQtde.Text);
  cdsProdutosValorTotal.asFloat := cdsProdutosValorUnitario.AsFloat *
                                    cdsProdutosQuantidade.asInteger;
  cdsProdutos.Post;

  edtCodProduto.Clear;
  edtQtde.Clear;
  edtValorUnit.Clear;

  edtCodProduto.SetFocus;
end;

procedure TfrmPedidoVenda.btnBuscaClienteClick(Sender: TObject);
begin
  if frmSearch = nil then
    Application.CreateForm(TfrmSearch, frmSearch);

  frmSearch.openBusca(Self, edtCodCliente.Name, cBuscaCliente);
end;

procedure TfrmPedidoVenda.getPedido;
var
  cdsTemp: TClientDataSet;
  objDetPedido: TDetalhePedido;
  objPedido: TPedido;
  Key: Char;
begin
  cdsProdutos.EmptyDataSet;

  objPedido := TPedido.Create(StrToInt(edtNumPedido.Text));
  edtCodCliente.Text := IntToStr(objPedido.ClienteId);
  edtNomeCliente.Text := objPedido.Nome;

  objDetPedido := TDetalhePedido.Create;

  cdsTemp := TClientDataSet.Create(nil);
  cdsTemp.Data := objDetPedido.getDetalhesPedidos(objPedido.NumPedido);
  cdsTemp.Open;

  while not cdsTemp.EOF do
  begin
    cdsProdutos.Append;
    cdsProdutosProdutoId.AsInteger := cdsTemp.FieldByName('ProdutoId').AsInteger;
    cdsProdutosQuantidade.AsInteger := cdsTemp.FieldByName('Quantidade').AsInteger;
    cdsProdutosDescricao.AsString := cdsTemp.FieldByName('Descricao').AsString;
    cdsProdutosValorUnitario.AsFloat := cdsTemp.FieldByName('ValorUnitario').AsFloat;
    cdsProdutosValorTotal.AsFloat := cdsTemp.FieldByName('ValorTotal').AsFloat;
    cdsProdutos.Post;
    cdsTemp.Next;
  end;

end;

procedure TfrmPedidoVenda.btnBuscaPedidoClick(Sender: TObject);
begin

  if frmSearch = nil then
    Application.CreateForm(TfrmSearch, frmSearch);

  frmSearch.openBusca(Self, edtNumPedido.Name, cBuscaPedido);

  if (edtNumPedido.Text <> '') then
  begin
    getPedido;
  end;
end;

procedure TfrmPedidoVenda.btnBuscaProdutoClick(Sender: TObject);
begin
  if frmSearch = nil then
    Application.CreateForm(TfrmSearch, frmSearch);

  frmSearch.openBusca(Self, edtCodProduto.Name, cBuscaProduto);
end;

procedure TfrmPedidoVenda.btnCancelarClick(Sender: TObject);
begin

  if MessageDlg('Deseja cancelar as altera��es?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  if (Trim(edtNumPedido.Text) = '') or (StrToInt(edtNumPedido.Text) < 0) then
  begin
    cdsProdutos.Cancel;
    ClearData;
  end
  else
  begin
    cdsProdutos.Cancel;
    getPedido;
  end;

end;

procedure TfrmPedidoVenda.btnExcluirClick(Sender: TObject);
var
  objPedido: TPedido;
  objPedidoControl: TPedidoController;
begin
  if (Trim(edtNumPedido.Text) = '') or (StrToInt(edtNumPedido.Text) < 0) then
  begin
    MessageDlg('Nenhum Pedido selecionado!', mtWarning, [mbOK], 0);
    Exit;
  end;

  if MessageDlg('Deseja realmente excluir o Pedido selecionado?', mtConfirmation, [MbYes, mbNo], 0) = mrNo then
    Exit;


  objPedido := TPedido.Create(StrToInt(edtNumPedido.Text));
  try
    objPedidoControl.Excluir(objPedido);
  finally
    objPedido.Free;
  end;

  ClearData;
  ShowMessage('Pedido Exclu�do!');
end;

procedure TfrmPedidoVenda.btnGravarPedidoClick(Sender: TObject);
var
  objCli: TCliente;
  objPedido: TPedido;
  objItems: Tlist<TDetalhePedido>;
  objDetPedido: TDetalhePedido;
  objPedidoControl: TPedidoController;
begin
  ValidarCampo(edtCodCliente, 'C�digo do Cliente');

  if (cdsProdutos.RecordCount <= 0) then
    raise Exception.Create('Pedido n�o pode ser salvo sem ter produtos selecionados');

  objPedido := TPedido.Create;
  objPedido.DataEmissao := Now;
  objPedido.ClienteId := StrToInt(edtCodCliente.Text);
  objPedido.ValorTotal := StrtoFloat(cdsProdutosValorTotalPedido.asString);
  objItems := TList<TDetalhePedido>.Create;

  cdsProdutos.DisableControls;
  cdsProdutos.First;

  while not cdsProdutos.EOF do
  begin
    objDetPedido := TDetalhePedido.Create;
    objDetPedido.ProdutoId := cdsProdutosProdutoId.asInteger;
    objDetPedido.Quantidade := cdsProdutosQuantidade.asInteger;
    objDetPedido.ValorUnitario := cdsProdutosValorUnitario.asFloat;
    objDetPedido.ValorTotal := cdsProdutosValorTotal.asFloat;

    try
      objItems.Add(objDetPedido);
    finally
      //objDetPedido.Free;
    end;

    cdsProdutos.Next;
  end;

  cdsProdutos.EnableControls;

  objPedidoControl := TPedidoController.Create;


  if (edtNumPedido.Text = '') then
    objPedidoControl.Inserir(objPedido, objItems)
  else
  begin
    objPedido.NumPedido := StrToInt(edtNumPedido.Text);
    objPedidoControl.Atualizar(objPedido, objItems);
  end;

  edtNumPedido.Text := IntToStr(objPedido.NumPedido);

  ShowMessage('Pedido salvo com sucesso!');
end;

procedure TfrmPedidoVenda.btnNovoPedidoClick(Sender: TObject);
begin
  if (cdsProdutos.RecordCount > 0) and (edtNumPedido.Text = '') then
  begin
    if (MessageDlg('Existem dados n�o salvos na tela. Deseja cancelar e inserir um novo pedido?', mtConfirmation, [mbYes, mbNo], 0 ) = mrNo) then
      Abort;
  end;

  clearData;
end;

procedure TfrmPedidoVenda.cdsProdutosAfterDelete(DataSet: TDataSet);
begin
  //
end;

procedure TfrmPedidoVenda.cdsProdutosBeforeDelete(DataSet: TDataSet);
begin
  if (MessageDlg('Deseja realmente excluir o item selecionado?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
    Abort;
end;

procedure TfrmPedidoVenda.dbgrdProdutosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
    cdsProdutos.Delete;
end;

procedure TfrmPedidoVenda.dbgrdProdutosKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    if (cdsProdutos.RecordCount > 0) then
    begin
      cdsProdutos.Edit;
      edtCodProduto.Text := cdsProdutosProdutoId.asString;
      edtQtde.Text := cdsProdutosQuantidade.asString;
      edtValorUnit.Text := cdsProdutosValorUnitario.AsString;
      edtCodProduto.SetFocus;
    end;
  end;
end;

procedure TfrmPedidoVenda.edtCodClienteExit(Sender: TObject);
var
  Key: Char;
begin
  Key := #13;
  edtCodClienteKeyPress(edtCodCliente, Key);
end;

procedure TfrmPedidoVenda.edtCodClienteKeyPress(Sender: TObject; var Key: Char);
var
  objCli: TCliente;
begin
  if (not (Key in ['0'..'9', #13, #8, #27]) ) then
    key := #0;

  if (Key = #13) and (Trim(edtCodCliente.Text) <> '') then
  begin
    try
      objCli := TCliente.Create(StrToInt(edtCodCliente.Text));
      edtNomeCliente.Text := objCli.Nome;
      edtCodProduto.SetFocus;
    except
      on E: Exception do
      begin
        edtNomeCliente.Clear;
        edtCodCliente.Clear;
        edtCodCliente.SetFocus;
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

procedure TfrmPedidoVenda.edtCodProdutoExit(Sender: TObject);
var
  Key: Char;
begin
  Key := #13;
  edtCodProdutoKeyPress(edtCodProduto, Key);
end;

procedure TfrmPedidoVenda.edtCodProdutoKeyPress(Sender: TObject; var Key: Char);
var
  objProd: TProduto;
begin
  if (not (Key in ['0'..'9', #13, #8, #27]) ) then
    key := #0;

  if (Key = #13) and (Trim(edtCodProduto.Text) <> '') then
  begin
     objProd := TProduto.Create(StrToInt(edtCodProduto.Text));
     edtValorUnit.Text := FormatFloat('#.00',objProd.PrecoVenda);
     edtQtde.SetFocus;
  end;
end;

procedure TfrmPedidoVenda.edtQtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if (not (Key in ['0'..'9', #13, #8, #27]) ) then
    key := #0;

  if (Key = #13) then
    edtValorUnit.SetFocus;
end;

procedure TfrmPedidoVenda.edtValorUnitKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    btnAddProduto.Click;
end;

procedure TfrmPedidoVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (((Key = VK_UP) or (Key = VK_DOWN)) and (not dbgrdProdutos.Focused)) then
    dbgrdProdutos.SetFocus;
end;

procedure TfrmPedidoVenda.clearData;
begin
  edtNumPedido.Clear;
  edtNomeCliente.Clear;
  edtCodCliente.Clear;
  edtCodProduto.Clear;
  edtQtde.Clear;
  edtValorUnit.Clear;
  cdsProdutos.EmptyDataSet;
  edtCodCliente.SetFocus;
end;

end.
