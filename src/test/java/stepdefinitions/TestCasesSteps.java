package stepdefinitions;

import helper.Utility;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.List;

import static helper.Utility.driver;

public class TestCasesSteps {

    WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));

    By testcases_menu = By.xpath("//a[normalize-space()='Test Cases']");
    By testcase_1 = By.xpath("//div[@class='panel-body']/ul/li\"//u[normalize-space()='Test Case 1: Register User']\"undefined");
    By testcase_2 = By.xpath("//div[@class='panel-body']/ul/li\"//u[contains(text(),'Test Case 2: Login User with correct email and pas')]\"undefined");
    By heading = By.xpath("//b[normalize-space()='Test Cases']");



    @When("user click on Test Cases menu")
    public void userClickOnTestCasesMenu() {

        wait.until(ExpectedConditions.visibilityOfElementLocated(testcases_menu));
        driver.findElement(testcases_menu).click();

    }

    @Then("verify that Test Case page is loaded successfully")
    public void verifyThatTestCasePageIsLoadedSuccessfully() {

        String actualTitle = Utility.getDriver().getTitle();
        String expectedTitle = "Automation Practice Website for UI Testing - Test Cases";

        Assert.assertEquals("Title does not match! Page may not be loaded correctly.", expectedTitle, actualTitle);
        System.out.println("✅ Page title verified successfully: " + actualTitle);

    }

    @Given("user is on the Test Case page")
    public void userIsOnTheTestCasePage() {

        wait.until(ExpectedConditions.visibilityOfElementLocated(heading));

    }

    @Then("verify all test case titles are visible")
    public void verifyAllTestCaseTitlesAreVisible() {
    }

    @And("verify that total number of test case titles equals {int}")
    public void verifyThatTotalNumberOfTestCaseTitlesEquals(int expectedtcase) {

        List<WebElement> testCaseTitles = Utility.getDriver().findElements(By.xpath("//div[@class='panel-body']/ul/li"));

        int actualtcase = testCaseTitles.size();
        System.out.println("Found " + actualtcase + " test case titles on the page.");

        Assert.assertEquals("Mismatch in number of test case titles!", expectedtcase, actualtcase);

    }

    @When("user clicks on {string}")
    public void userClicksOn(String arg0) {
    }

    @Then("verify test steps for {string} are displayed")
    public void verifyTestStepsForAreDisplayed(String arg0) {
    }

    @Then("verify that breadcrumb navigation is visible")
    public void verifyThatBreadcrumbNavigationIsVisible() {
    }

    @And("verify page title {string} is visible")
    public void verifyPageTitleIsVisible(String arg0) {
    }

    @And("verify list of test cases is displayed")
    public void verifyListOfTestCasesIsDisplayed() {
    }

    @And("verify that user is not logged in")
    public void verifyThatUserIsNotLoggedIn() {
    }

    @And("user click on Test Cases button")
    public void userClickOnTestCasesButton() {
    }

    @Then("verify that test cases are numbered from {int} to {int} sequentially")
    public void verifyThatTestCasesAreNumberedFromToSequentially(int arg0, int arg1) {
    }

    @When("user click on {string}")
    public void userClickOn(String arg0) {
    }

    @Then("verify that test steps under Test Case {int} are visible")
    public void verifyThatTestStepsUnderTestCaseAreVisible(int arg0) {
    }

    @Then("verify that both Test Case {int} and Test Case {int} steps are visible")
    public void verifyThatBothTestCaseAndTestCaseStepsAreVisible(int arg0, int arg1) {
    }
}
