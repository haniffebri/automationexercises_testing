package runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        glue = {"stepdefinitions"},
        features = {"src/test/java/TestCases"},
        plugin = {"pretty"}
)

public class TestRunner {
}
