#language: en

Feature: Destravado
    Como usuario 
    desejo inserir uma senha 
    para travar o cofrre

    Scenario: verificar se display esta funcionando
        Given a porta esta destravada
        Then deve exibir "Entre com a senha 6 digitos"

    Scenario: limpar a senha
        Given pressionei limpar
        Then deve exibir ""
        
    Scenario: pressionar um digito com a porta aberta
        Given a porta esta destravada
        When digitei 0
        Then deve exibir "Feche a porta antes de digitar a senha"

    Scenario: digitar 0 com a porta fechada
        Given a porta esta fechada
        When digitei 0
        Then deve exibir "0"

    Scenario: gravar senha valida com a porta fechada e destravada
        Given a porta esta fechada
        And a porta esta destravada
        And digitei 1
        And digitei 9
        And digitei 3
        And digitei 5
        And digitei 6
        And digitei 6
        When pressionei o botao salvar
        Then deve exibir "Senha salva. Cofre trancado"

    Scenario: inserir senha com menos de 6 digitos
        Given a porta esta fechada
        Given digitei 1
        Given digitei 2
        Given digitei 3
        Given digitei 4
        When pressionei o botao salvar
        Then deve exibir "senha precisa de 6 digitos. Tente novamente"
        
    Scenario: digitar numeros com a porta fechada depois abrir e digitar
        Given a porta esta fechada 
        And digitei 9
        And digitei 8
        And abri a porta
        When digitei 7
        Then deve exibir "Feche a porta antes de digitar a senha"
        Given a porta esta fechada
        When digitei 7
        Then deve exibir "7"

    Scenario: tentar gravar senha com menos de 6 digitos com a porta fechada e destravada
        Given a porta esta fechada
        And a porta esta destravada
        And digitei 1
        And digitei 2
        And digitei 3
        When pressionei o botao salvar
        Then deve exibir "senha precisa de 6 digitos. Tente novamente"

    Scenario: tentar gravar senha com mais de 6 digitos com a porta fechada e destravada
        Given a porta esta fechada
        And a porta esta destravada
        And digitei 1
        And digitei 2
        And digitei 3
        And digitei 4
        And digitei 5
        And digitei 6
        And digitei 7
        And digitei 8
        And digitei 9
        When pressionei o botao salvar
        Then deve exibir "senha precisa de 6 digitos. Tente novamente"
