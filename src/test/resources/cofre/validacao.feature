# language: en
Feature: Validar Senha

  Scenario Outline: Test eh numero
    Given entrei a senha <senha>
    When verificar se eh numero
    Then a resposta deve ser <saida>

    Examples: 
      | senha     | saida |
      | "123"     | 1     |
      | "1234444" | 1     |
      | ""        | 0     |
      | "123aaaa" | 0     |

  Scenario Outline: Test eh senha valida
    Given entrei a senha <senha>
    When verificar se eh senha valida
    Then a resposta deve ser <saida>

    Examples: 
      | senha    | saida |
      | "123"    | 0     |
      | "1"      | 0     |
      | "12345"  | 0     |
      | "12345a" | 0     |
      | "123999" | 1     |
