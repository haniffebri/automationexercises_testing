package Runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        glue = {"Logic"},
        features = {"src/test/java/TestCases"},
        plugin = {"pretty"}
)

public class runner {
}
