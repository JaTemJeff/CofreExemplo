#language: en

Feature: Travar
    Eu como usuario desejo inserir uma senha para travar o cofrre

    Scenario: verificar se display esta funcionando 
        Then deve exibir mensagem "Entre com a senha 6 digitos"
        And porta esta destravada

    Scenario: Limpar a senha
        Then deve exibir mensagem "Entre com a senha 6 digitos"
        And porta esta destravada

    Scenario: inserir senha com 6 digitos
        Given digitei a senha 123456
        When pressionei entrar
        Then travou a porta do cofre

    Scenario: inserir senha com menos de 6 digitos 
        Given digitei a senha 1234
        When pressionei entrar
        Then exibiu mensagem "senha errada. Tente novamente"

    Scenario: inserir senha com mais de 6 digitos
        Given digitei a senha 1234567
        When pressionei entrar
        Then exibiu mensagem "senha errada. Tente novamente"