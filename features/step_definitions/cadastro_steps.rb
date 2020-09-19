Dado('que acesso a página de login\/cadastro') do
    @app.cadastropage.load
end
  
Dado('solicito um novo cadastro para o email {string}') do |email|
    @app.cadastropage.iniciar_criacao_conta email
end
  
Dado('preencho os campos do formulário com dados fixos') do
    @app.cadastropage.preencher_form_cadastro_com_dados_fixos
end

Dado('preencho os campos do formulário com dados válidos aleatórios') do
    @app.cadastropage.preencher_form_cadastro_com_dados_aleatorios
end

Dado('preencho os campos do formulário com {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {int}, {string}') do |gender, first_name, last_name, password, day, month, year, newsletter, address, city, zipcode, state, phone, address_name|
    @app.cadastropage.preencher_form_com_dados_de_exemplos(gender, first_name, last_name, password, day, month, year, newsletter, address, city, zipcode, state, phone, address_name)
end

Dado('preencho os campos do formulário com dados válidos padrão') do
    @app.cadastropage.preencher_form_cadastro_com_dados_datafile
end

Quando('confirmo o cadastro') do
    @app.cadastropage.confirmar_cadastro
end
  
Então('devo ser direcionado à pagina de minha conta') do
   expect(@app.minhacontapage.page_title.text).to eq('MY ACCOUNT')
   expect(@app.minhacontapage.account_name.text).to eq(@app.cadastropage.account_full_name)
end