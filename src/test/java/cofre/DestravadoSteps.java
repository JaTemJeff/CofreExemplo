package cofre;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.when;

public class DestravadoSteps extends CofrePMTest {

    @Then("^deve exibir \"([^\"]*)\"$")
    public void deveExibir(String arg0) {
        assertEquals(arg0, cofrePM.getDisplay());
    }

    @Given("^a porta esta destravada$")
    public void aPortaEstaDestravada() {
        when(sensorMock.travada()).thenReturn(Boolean.FALSE);
    }

    @Given("^pressionei limpar$")
    public void pressioneiLimpar() {
        cofrePM.clear();
    }

    @When("^digitei (\\d+)$")
    public void digitei(int arg0) {
        cofrePM.pressButton(arg0);
    }

    @Given("^a porta esta fechada$")
    public void aPortaEstaFechada() {
        when(sensorMock.fechada()).thenReturn(Boolean.TRUE);
    }

    @When("^pressionei o botao salvar$")
    public void pressioneiOBotaoSalvar() {
        cofrePM.ok();
    }

    @And("^abri a porta$")
    public void abriAPorta() {
        when(sensorMock.fechada()).thenReturn(Boolean.FALSE);
    }
}
