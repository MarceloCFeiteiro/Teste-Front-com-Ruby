 #language: pt

 Funcionalidade: Cadastrar Cliente
 Como um cliente da loja online
 Quero cadastrar uma conta
 Para efetuar compras

@cadastro_datafile
 Esquema do Cenário: Cadastar cliente com dados válidos de arquivo externo
 Dado que acesso a página de login/cadastro
 E solicito um novo cadastro para o email 'padrão'
 E preencho os campos do formulário com dados válidos padrão
 Quando confirmo o cadastro 
 Então  devo ser direcionado à pagina de minha conta
 