# Teste-1-Delphi-MySQL-WK

Projeto criado para o teste da vaga de Densenvolvedor Delphi Pleno para a empresa WK Technology.

- Para setup do Banco de Dados da aplicação teste utilizar o arquivo CONN.INI (o mesmo deverá estar na pasta Win32/Debuug).

- Desenvolvi o programa utilizando basicamente Orientação a Objetos, e parão MVC, conforme soliciado nas especificações do projeto.

- Na pasta DB encontram-se o Dump do banco de dados em SQL, e os diagramas do modelo.

- Na modelagem, alguns pontos explicitamente citados eu não concordo, porém tetei seguir o modelo solicitado (Por exemplo, não utilizo dados identificadores explícitos como PK, como por exemplo, no caso do Número do Pedido, ou agum código que possa ser manipulado diretamente por usuários, para esses casos eu prefiro utilizar uma PK sequencial numerica autoincremental ou gerada por sequence, e ter a coluna Número do Pedido explicito na entidade.).

- ORIENTAÇÕES para utilização do programa para testes:
  - Seleção de Cliente: Digitar o código do cliente no campo Código do Cliente (no BD temos clientes com código do 1 ao 20 para teste) e teclar Enter. 
    Opcionalmente pode selecionar através do botão de busca (Lupa)
  - Seleção de Produto: Digitar o código do produto  no campo Código do Produto (no BD temos produtos com código do 1 ao 20 para teste) e teclar Enter. 
    Opcionalmente pode selecionar através do botão de busca (Lupa). 
    A tecla Enter irá navegar pelos campos. Ao concluir a digitação do ultimo campo do produto (valor Unitário) e teclar Enter, o produto será inserido na Grid de detalhes (que também pderá ser salvo através do botão Adicionar - cruz verde).
    Ao utilizar as setas de teclado para cima ou para baixo, a aplicação irá focar na Grid de Produtos. Ao teclar Enter o registro entrará em edição.
  - Um Pedido ja cadastrado poderá ser consultado através do botão de busca (Lupa) à direita do campo Número do Pedido. 
    Após seleceionar o pedido desejado o mesmo poderá ser editado.
  
      
  
