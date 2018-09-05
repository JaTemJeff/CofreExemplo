/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cofre;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import static org.junit.Assert.assertEquals;

/**
 *
 * @author daphnemillss
 */
public class ValidacaoSteps {
    
    String senha;
    int res;

    @Given("^entrei a senha \"([^\"]*)\"$")
    public void entrei_a_senha(String arg1) throws Exception {
        senha = arg1;
    }

    @When("^verificar se eh numero$")
    public void verificar_se_eh_numero() throws Exception {
        if(ValidacaoHelper.ehNumero(senha)){
            res = 1;
        }else{
            res = 0;
        }
    }

    @Then("^a resposta deve ser (\\d+)$")
    public void a_resposta_deve_ser(int arg1) throws Exception {
        assertEquals(res, arg1);
    }

    @When("^verificar se eh senha valida$")
    public void verificar_se_eh_senha_valida() throws Exception {
        if(ValidacaoHelper.ehSenhaValida(senha)){
            res = 1;
        }else{
            res = 0;
        }
    }

}
