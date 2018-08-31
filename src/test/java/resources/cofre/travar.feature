#language: en

Feature: Travar
    Eu como usuario desejo inserir uma senha para travar o cofrre

    Scenario: verificar se display esta funcionando 
        Then deve exibir mensagem "Entre com a senha 6 digitos"
        And porta esta destravada

    Scenario: limpar a senha
        Then deve exibir mensagem "Entre com a senha 6 digitos"
        And porta esta destravada
        
    Scenario: digitar algo com a porta aberta
        Given a porta está aberta
        When pressionei um digito
        Then exibiu mensagem "Feche a porta antes de digitar a senha"
        
        

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

@Test
    public void testPortaNaoFechada() {
        when(sensorMock.fechada())
                .thenReturn(Boolean.FALSE);
        
        for(int botao = 0; botao <=9; botao++) {
            cofrePM.pressButton(botao);
            assertEquals("Feche a porta antes de digitar a senha", cofrePM.getDisplay());
            cofrePM.clear();
        }
        
        cofrePM.ok();
        assertEquals("Feche a porta antes de digitar a senha", cofrePM.getDisplay());
    }