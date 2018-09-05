#language: en

Feature: Travado
    Como usuário 
    desejo usar a senha 
    para destravar o cofre

    Scenario: inserir senha invalida 
        Given a senha salva e "654321"
        And porta esta fechada
        And porta esta travada
        And entrei 3
        And entrei 1
        And entrei 2
        And entrei 3
        And entrei 1
        And entrei 2
        When apertei o botao salvar
        Then deve mostrar "senha errada. Tente novamente"

    Scenario: inserir senha com menos de 6 digitos
        Given a senha salva e "123456"
        And porta esta fechada
        And porta esta travada
        And entrei 1
        And entrei 2
        And entrei 3
        And entrei 4
        And entrei 5
        When apertei o botao salvar
        Then deve mostrar "senha errada. Tente novamente"

    Scenario: inserir senha correta
        Given a senha salva e "123456"
        And porta esta fechada
        And porta esta travada
        And entrei 1
        And entrei 2
        And entrei 3
        And entrei 4
        And entrei 5
        And entrei 6
        When apertei o botao salvar
        Then deve mostrar "senha correta. Cofre aberto"

    Scenario: inserir senha em branco
        Given a senha salva e "123456"
        And porta esta fechada
        And porta esta travada
        When apertei o botao salvar
        Then deve mostrar "senha errada. Tente novamente"

    Scenario: inserir senha com mais de 6 digitos
        Given a senha salva e "123456"
        And porta esta fechada
        And porta esta travada
        And entrei 1
        And entrei 2
        And entrei 3
        And entrei 4
        And entrei 5
        And entrei 5
        And entrei 7
        When apertei o botao salvar
        Then deve mostrar "senha errada. Tente novamente"
