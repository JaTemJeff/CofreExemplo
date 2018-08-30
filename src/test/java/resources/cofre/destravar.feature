#language: en

Feature: Destravar
    Eu como usuário desejo usar a senha para destravar o cofre

    Scenario: inserir senha invalida 
        Given a senha salva e 654321
        And digitei a senha 312312
        When pressionei entrar 
        Then a mensagem deve ser "senha errada. Tente novamente."
        And a porta continua fechada

    Scenario: Inserir senha com menos de 6 digitos
        Given a senha salva e 123456
        And digitei a senha 12345
        When pressionei entrar
        Then a mensagem deve ser "senha errada. Tente novamente."
        And a porta continua fechada

    Scenario: Inserir senha correta
        Given a senha salva e 123456
        And digitei a senha 123456
        When pressionei entrar
        Then a mensagem deve ser "senha correta. Cofre aberto"
        And a porta esta aberta 

        
        
