program Teste1_MVC_Firedac;

uses
  Vcl.Forms,
  uClienteClass in 'Model\uClienteClass.pas',
  uProdutoClass in 'Model\uProdutoClass.pas',
  uPedidoClass in 'Model\uPedidoClass.pas',
  uDAOClass in 'Model\uDAOClass.pas',
  uClienteController in 'Controller\uClienteController.pas',
  uPedidoVenda in 'View\uPedidoVenda.pas' {frmPedidoVenda},
  uProdutoController in 'Controller\uProdutoController.pas',
  uPedidoController in 'Controller\uPedidoController.pas',
  uDetalhePedidoClass in 'Model\uDetalhePedidoClass.pas',
  uSearch in 'View\uSearch.pas' {frmSearch};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPedidoVenda, frmPedidoVenda);
  Application.CreateForm(TfrmSearch, frmSearch);
  Application.Run;
end.
