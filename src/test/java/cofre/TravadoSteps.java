package cofre;

import cucumber.api.CucumberOptions;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.when;

public class TravadoSteps extends CofrePMTest {

    @Given("^a senha salva e \"([^\"]*)\"$")
    public void aSenhaSalvaE(String arg0) {
        when(memoriaMock.getSenha()).thenReturn(arg0);
    }

    @When("^entrei (\\d+)$")
    public void entrei(int arg0) {
        cofrePM.pressButton(arg0);
    }

    @Given("^porta esta fechada$")
    public void aPortaEstaFechada() {
        when(sensorMock.fechada()).thenReturn(Boolean.TRUE);
    }

    @When("^apertei o botao salvar$")
    public void aperteiOBotaoSalvar() {
        cofrePM.ok();
    }

    @Then("^deve mostrar \"([^\"]*)\"$")
    public void deveMostrar(String arg0) {
        assertEquals(arg0, cofrePM.getDisplay());
    }

    @And("^porta esta travada$")
    public void portaEstaTravada() {
        when(sensorMock.travada()).thenReturn(Boolean.TRUE);
    }
}
