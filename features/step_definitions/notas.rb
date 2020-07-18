# frozen_string_literal: true

Dado('que o colaborador esteja na página inicial logada com {string} e {string}') do |email, password|
  visit 'https://unipec.escolaweb.com.br/login.html'

  find('#login').set email

  find('#senha').set password

  click_button 'Entrar'
end

Quando('colaborador clica no menu lateral') do
  find('#ls-sidebar-menu-15 > .dash-menu-item').click
end

Quando('seleciona opção carregar diario') do
  find('#btnSelecionarDiario').click
end

Quando('seleciona a opção notas') do
  find('#ls-sidebar-menu-11 > .dash-menu-item').click

  find('#ls-sidebar-menu-20 > .dash-menu-item').click
end

Então('deve visualizar a tela para selecionar lançar as notas') do
  notas_aluno = page.has_css?('.ng-scope')

  expect(notas_aluno).to be true
end
