#language: en

Feature: Travar
    Como usuario 
    desejo inserir uma senha 
    para travar o cofrre

    Scenario: verificar se display esta funcionando 
        Then deve exibir mensagem "Entre com a senha 6 digitos"
        And porta esta destravada

    Scenario: limpar a senha
        Then deve exibir mensagem "Entre com a senha 6 digitos"
        And porta esta destravada
        
    Scenario: pressionar um digito com a porta aberta
        Given a porta esta aberta
        When pressionei um digito
        Then exibiu mensagem "Feche a porta antes de digitar a senha"

    Scenario: digitar 0 com a porta fechada
        Given a porta esta fechada
        When presseionei o digito 0
        Then exibiu o digito "0" no display 

    Scenario: gravar senha valida com a porta fechada e destravada
        Given a porta esta fechada
        And a porta esta destravada
        And entrei com os digitos 193566
        When pressionei o botao salvar
        Then exibiu a mensagem "Senha salva. Cofre trancado"

    Scenario: inserir senha com menos de 6 digitos 
        Given digitei a senha 1234
        When pressionei entrar
        Then exibiu mensagem "senha errada. Tente novamente"
        
    Scenario: digitar numeros com a porta fechada depois abrir e digitar
        Given a porta esta fechada 
        And digitei os digitos 98
        And abri a porta
        When pressionei o digito 7
        Then exibiu a mensagem "Feche a porta antes de digitar a senha"
        Given fechei a porta
        When pressionei o digito 7
        Then exibiu o digito 7 no display

    Scenario: tentar gravar senha com menos de 6 digitos com a porta fechada e destravada
        Given a porta esta fechada
        And a porta esta destravada
        And entrei com os digitos 123
        When pressionei o botao salvar
        Then exibiu a mensagem "senha precisa de 6 digitos. Tente novamente"

    Scenario: tentar gravar senha com mais de 6 digitos com a porta fechada e destravada
        Given a porta esta fechada
        And a porta esta destravada
        And entrei com os digitos 123456789
        When pressionei o botao salvar
        Then exibiu a mensagem "senha precisa de 6 digitos. Tente novamente"
