# frozen_string_literal: true

Dado('que o colaborador esteja na tela de login da EscolaWeb') do
  visit 'https://unipec.escolaweb.com.br/login.html'
end

Quando('colaborador realiza login com {string} e {string}') do |email, password|
  # Para buscar pelo elemento name ("input[name=nomedocampo]").set email

  find('#login').set email

  find('#senha').set password

  click_button 'Entrar'
end

Então('deve visualizar a página inicial logada com mensagem {string}') do |expect_name|
  expect(page).to have_text expect_name

  # Faz validação do css da página, é melhor pq nunca será alterado, mas precisa tirar o "Dashboard" do login.feature
  # usuarui_logado = page.has_css?('.ng-scope')
  # expect(usuario_logado).to be true
end

Então('deve ver mensagem de alerta {string}') do |expect_message|
  alert = find('.senha_Alerta')

  # Os dois abaixo fazem a mesma coisa

  # expect(page).to have_text expect_message

  expect(alert.text).to eql expect_message
end
