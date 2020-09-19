 #language: pt

@regressivo
 Funcionalidade: Cadastrar Cliente
 Como um cliente da loja online
 Quero cadastrar uma conta
 Para efetuar compras

@cadastro_exemplos
 Esquema do Cenário: Cadastar cliente com dados válidos
 Dado que acesso a página de login/cadastro
 E solicito um novo cadastro para o email <email>
 E preencho os campos do formulário com <gender>, <first_name>, <last_name>, <password>, <day>, <month>, <year>, <newsletter>, <address>, <city>, <zipcode>, <state>, <phone>, <address_name>
 Quando confirmo o cadastro 
 Então  devo ser direcionado à pagina de minha conta
 Exemplos:
 | email                   | gender | first_name | last_name | password | day  | month   | year   | newsletter | address      | city    | zipcode | state      | phone         | address_name |
 | 'pessoa1_ruby@guts.com' | 'masc' | 'Paula'    | 'Silva'   | '123456' | '10' | 'March' | '1980' | 'no'       | 'Rua 1, 178' | 'Porto' | '12345' | 'Iowa'     | 5551947385930 | 'Casa'       |
 | 'pessoa2_ruby@guts.com' | 'fem'  | 'joao'     | 'Santos'  | '123456' | '14' | 'April' | '1986' | 'yes'      | 'Rua 2, 185' | 'Porto' | '54321' | 'Nebraska' | 5551947385956 | 'Trabalho'   |