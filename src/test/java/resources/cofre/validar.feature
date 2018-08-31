#language: en

Feature: Validar
    Como administrador do cofre 
    desejo validar se a senha que sera cadastrada, contem 6 digitos e se e composta apenas por numeros 
    para assegurar o funcionamento correto do cofre
    
    Scenario Outline: pressionar digitos para gravar senha
        Given entrei com os <digitos> 
        And deve ser apenas numeros <ehnumero> 
        And deve ser 6 digitos <tamanho>
        When pressionei salvar
        Then o resultado deve ser <saida>
        
        Examples:
        |digitos   | ehnumero   | tamanho | saida    |
        |123456    |    true    |  true   |   true   |
        |123456789 |    true    |  false  |   false  |
        |123       |    true    |  false  |   false  |
        |"123abc " |    false   |  true   |   false  |
        |""        |    false   |  false  |   false  |
        |"abc"     |    false   |  false  |   false  |
       

    