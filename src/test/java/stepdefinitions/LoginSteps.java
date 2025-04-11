package stepdefinitions;

import helper.Utility;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

import static helper.Utility.driver;

public class LoginSteps {
    @And("user click on Login button")
    public void userClickOnLoginButton() {

        WebElement logupButton =  driver.findElement(By.xpath("//a[normalize-space()='Signup / Login']"));
        logupButton.click();

    }

    @And("Verify Login to your account is visible")
    public void verifyLoginToYourAccountIsVisible() {

        WebDriverWait wait = new WebDriverWait(Utility.getDriver(), Duration.ofSeconds(10));
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//h2[normalize-space()='Login to your account']")));

    }

    @When("User fill correct email {string}")
    public void userFillCorrectEmail(String Email) {

        WebElement fillEmail = driver.findElement(By.xpath("//input[@data-qa='login-email']"));
        fillEmail.sendKeys(Email);

    }

    @And("User fill correct password {string}")
    public void userFillCorrectPassword(String Pw) {

        WebElement fillPw = driver.findElement(By.xpath("//input[@placeholder='Password']"));
        fillPw.sendKeys(Pw);

    }

    @And("Click login button")
    public void clickLoginButton() {

        WebElement loginButton =  driver.findElement(By.xpath("//button[normalize-space()='Login']"));
        loginButton.click();

    }

    @Then("Verify that Logged in as username is visible")
    public void verifyThatLoggedInAsUsernameIsVisible(){

        WebElement loggedInElement = driver.findElement(By.xpath("//li[10]//a[1]"));

        String actualText = loggedInElement.getText().trim();
        String displayedName = actualText.replace("Logged in as ", "").trim();

        System.out.println("Logged in as " + displayedName);

    }


    @When("User fill incorrect email")
    public void userFillIncorrectEmail() {
    }

    @Then("Verify error Your email or password is incorrect! is visible")
    public void verifyErrorYourEmailOrPasswordIsIncorrectIsVisible() throws InterruptedException {

        WebElement errorIncorrect = driver.findElement(By.xpath("//p[normalize-space()='Your email or password is incorrect!']"));

        errorIncorrect.isDisplayed();

    }

    @And("User fill incorrect password")
    public void userFillIncorrectPassword() {
    }

    @And("User fill email with invalid format \\(missing @example.com) {string}")
    public void userFillEmailWithInvalidFormatMissingExampleCom(String missEmail) {

        WebElement fillEmail = driver.findElement(By.xpath("//input[@data-qa='login-email']"));
        fillEmail.sendKeys(missEmail);

    }

    @Then("Verify that {string}@{string}email{string}@{string} is visible")
    public void verifyThatPleaseIncludeAnInTheEmailAddressEmailIsMissingAnIsVisible() {
    }

    @When("User fill incorrect email {string}")
    public void userFillIncorrectEmail(String inEmail) {

        WebElement fillInEmail = driver.findElement(By.xpath("//input[@data-qa='login-email']"));
        fillInEmail.sendKeys(inEmail);

    }

    @And("User fill incorrect password {string}")
    public void userFillIncorrectPassword(String inPw) {

        WebElement fillInPw = driver.findElement(By.xpath("//input[@placeholder='Password']"));
        fillInPw.sendKeys(inPw);

    }

    @Then("Verify Please fill out this field. is visible on the password field")
    public void verifyPleaseFillOutThisFieldIsVisibleOnThePasswordField(){

        WebElement pwlField = driver.findElement(By.xpath("//input[@placeholder='Password']"));

        JavascriptExecutor js = (JavascriptExecutor) driver;
        String validationMessage = (String) js.executeScript("return arguments[0].validationMessage;", pwlField);

        System.out.println("Validation Message : " + validationMessage);

    }

    @Then("Verify that Please include an @ in the email address. email is missing an @. is visible on the email login field")
    public void verifyThatPleaseIncludeAnInTheEmailAddressEmailIsMissingAnIsVisibleOnTheEmailLoginField() {

        WebElement emailField = driver.findElement(By.xpath("//input[@data-qa='login-email']"));

        JavascriptExecutor js = (JavascriptExecutor) driver;
        String validationMessage = (String) js.executeScript("return arguments[0].validationMessage;", emailField);

        System.out.println("Validation Message : " + validationMessage);

    }

    @And("User leave email field empty")
    public void userLeaveEmailFieldEmpty() {

        WebElement emailField = driver.findElement(By.xpath("//input[@data-qa='login-email']"));
        emailField.sendKeys("");

    }

    @And("User leave password field empty")
    public void userLeavePasswordFieldEmpty() {

        WebElement passwordField = driver.findElement(By.xpath("//input[@data-qa='login-password']"));
        passwordField.sendKeys("");

    }

    @When("User click logout button")
    public void userClickLogoutButton() {

        WebElement logoutButton = driver.findElement(By.xpath("//a[normalize-space()='Logout']"));
        logoutButton.click();

    }

    @Then("Verify that user is navigated to login page")
    public void verifyThatUserIsNavigatedToLoginPage(){

        WebDriverWait wait = new WebDriverWait(Utility.getDriver(), Duration.ofSeconds(10));
        WebElement loginHeader = wait.until(
                ExpectedConditions.visibilityOfElementLocated(
                        By.xpath("//h2[normalize-space()='Login to your account']")
                )
        );

        Assert.assertTrue("Login page is not visible!", loginHeader.isDisplayed());

        System.out.println("Successfully navigated to login page");

    }
}
