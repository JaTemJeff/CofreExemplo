package cofre;

import cucumber.api.junit.Cucumber;
import cucumber.api.CucumberOptions;
import org.junit.Test;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(plugin = {"pretty", "html:target/cucumber"})
public class Cucumber01Test {
    
    @Test
    public void teste(){}

}
