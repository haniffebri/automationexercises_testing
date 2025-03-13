package Logic;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class Login_Logic {
    @And("user click on Login button")
    public void userClickOnLoginButton() {
    }

    @And("Verify {string} is visible")
    public void verifyLoginToYourAccountIsVisible() {
    }

    @When("User fill correct email")
    public void userFillCorrectEmail() {
    }

    @And("User fill correct password")
    public void userFillCorrectPassword() {
    }

    @And("Click {string} button")
    public void clickLoginButton() {
    }

    @Then("Verify that {string} is visible")
    public void verifyThatLoggedInAsUsernameIsVisible() {
    }

    @And("Click on {string} button")
    public void clickOnSignupLoginButton() {
    }

    @When("User fill incorrect email")
    public void userFillIncorrectEmail() {
    }

    @Then("Verify error {string} is visible")
    public void verifyErrorYourEmailOrPasswordIsIncorrectIsVisible() {
    }

    @And("User fill incorrect password")
    public void userFillIncorrectPassword() {
    }

    @And("User fill email with invalid format \\(missing @example.com)")
    public void userFillEmailWithInvalidFormatMissingExampleCom() {
    }

    @Then("Verify that {string}@{string}email{string}@{string} is visible")
    public void verifyThatPleaseIncludeAnInTheEmailAddressEmailIsMissingAnIsVisible() {
    }
}
