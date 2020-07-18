#language: pt

Funcionalidade: Carregar Diário

    Para que possa inserir notas e faltas
    Sendo um usuário previamente logado
    Posso acessar o menu e selecionar a turma

    @notas
    Cenário: Carregar diário 
        Dado que o colaborador esteja na página inicial logada com "clayton.santos" e "Nho121105"
        Quando colaborador clica no menu lateral
        E seleciona opção carregar diario
        E seleciona a opção notas
        Então deve visualizar a tela para selecionar lançar as notas