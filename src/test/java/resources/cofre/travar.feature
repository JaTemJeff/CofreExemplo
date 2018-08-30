#language: en

Feature: Travar
    Eu como usuario desejo inserir uma senha para travar o cofrre

    Scenario: verificar se display esta funcionando 
        Given 
        When 
        Then 

    Scenario: inserir senha com 6 digitos
        Given digitei a senha 123456
        When pressionei entrar
        Then travou a porta do cofre


    Scenario: inserir senha com menos de 6 digitos 
        Given digitei a senha 1234
        When pressionei entrar
        Then exibiu mensagem "senha errada. Tente novamente"
    
    