#language: pt

Funcionalidade: Login

    Para que possa inserir notas e faltas
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu email e senha

    @login1
    Cenário: Login com sucesso
        Dado que o colaborador esteja na tela de login da EscolaWeb
        Quando colaborador realiza login com "clayton.santos" e "Nho121105"
        Então deve visualizar a página inicial logada com mensagem "Dashboard"

     
    @login2 
    Esquema do Cenário: Login sem Sucesso
        Dado que o colaborador esteja na tela de login da EscolaWeb
        Quando colaborador realiza login com <login> e <senha>
        Então deve ver mensagem de alerta <texto>

        Exemplos:
            | login             | senha       | texto                                       |
            | "clayton.santos"  | "Nho121100" | "Usuário e senha informados são inválidos!" |
            | "clayton.santos"  | ""          | "Preenchimento Obrigatório!"                |

