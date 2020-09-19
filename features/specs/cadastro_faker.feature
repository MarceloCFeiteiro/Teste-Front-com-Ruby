 #language: pt

 Funcionalidade: Cadastrar Cliente
 Como um cliente da loja online
 Quero cadastrar uma conta
 Para efetuar compras

@cadastro_dados_faker
 Cenário: Cadastar cliente com dados válido aleatórios
 Dado que acesso a página de login/cadastro
 E solicito um novo cadastro para o email 'aleatório'
 E preencho os campos do formulário com dados válidos aleatórios
 Quando confirmo o cadastro 
 Então devo ser direcionado à pagina de minha conta