#language: en

Feature: Travado
    Como usuário 
    desejo usar a senha 
    para destravar o cofre

    Scenario: inserir senha invalida 
        Given a senha salva e "654321"
        And digitei 3
        And digitei 1
        And digitei 2
        And digitei 3
        And digitei 1
        And digitei 2
        When pressionei o botao salvar
        Then deve exibir "senha errada. Tente novamente."
        And porta deve estar fechada

    Scenario: inserir senha com menos de 6 digitos
        Given a senha salva e 123456
        And digitei a senha 12345
        When pressionei entrar
        Then a mensagem deve ser "senha errada. Tente novamente."
        And a porta continua fechada

    Scenario: inserir senha correta
        Given a senha salva e 123456
        And digitei a senha 123456
        When pressionei entrar
        Then a mensagem deve ser "senha correta. Cofre aberto"
        And a porta esta aberta 

    Scenario: inserir senha em branco
        Given a senha salva e 123456
        And digitei a senha ""
        When pressionei entrar
        Then a mensagem deve ser "senha errada. Tente novamente."
        And a porta esta aberta 

    Scenario: inserir senha com mais de 6 digitos
        Given a senha salva e 123456
        And digitei a senha 123456789
        When pressionei entrar
        Then a mensagem deve ser "senha errada. Tente novamente."
        And a porta continua fechada
        

        
        
