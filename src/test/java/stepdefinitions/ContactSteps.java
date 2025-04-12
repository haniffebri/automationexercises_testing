package stepdefinitions;

import helper.Utility;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

import static helper.Utility.driver;

public class ContactSteps {
    @And("verify that Contact Us button is visible successfully")
    public void verifyThatContactUsButtonIsVisibleSuccessfully() {

        WebDriverWait wait = new WebDriverWait(Utility.getDriver(), Duration.ofSeconds(10));
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//a[normalize-space()='Contact us']")));

    }

    @And("user click on Contact Us button")
    public void userClickOnContactUsButton() {

        WebElement contactButton =  driver.findElement(By.xpath("//a[normalize-space()='Contact us']"));
        contactButton.click();

    }

    @And("Verify GET IN TOUCH is visible")
    public void verifyGETINTOUCHIsVisible() {

        WebDriverWait wait = new WebDriverWait(Utility.getDriver(), Duration.ofSeconds(10));
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//h2[normalize-space()='Get In Touch']")));

    }

    @When("User fill name form {string}")
    public void userFillNameForm(String Name) {

        WebElement nameForm = driver.findElement(By.xpath("//input[@placeholder='Name']"));
        nameForm.sendKeys(Name);

    }

    @And("User fill email form {string}")
    public void userFillEmailForm(String Email) {

        WebElement emailForm = driver.findElement(By.xpath("//input[@placeholder='Email']"));
        emailForm.sendKeys(Email);

    }

    @And("User fill subject form {string}")
    public void userFillSubjectForm(String Subject) {

        WebElement subjectForm = driver.findElement(By.xpath("//input[@placeholder='Subject']"));
        subjectForm.sendKeys(Subject);

    }

    @And("User fill message form {string}")
    public void userFillMessageForm(String Message) {

        WebElement messageForm = driver.findElement(By.xpath("//textarea[@id='message']"));
        messageForm.sendKeys(Message);

    }

    @And("User upload file")
    public void userUploadFile() {

        String filePath = System.getProperty("user.dir") + "/src/test/resources/upload/1.jpeg";

        WebElement uploadInput = driver.findElement(By.xpath("//input[@name='upload_file']"));
        uploadInput.sendKeys(filePath);

        System.out.println("File uploaded: " + filePath);

    }

    @And("User click submit button")
    public void userClickSubmitButton() {

        WebElement submitButton =  driver.findElement(By.xpath("//input[@name='submit']"));
        submitButton.click();

    }

    @And("User click ok button on the popup alert")
    public void userClickOkButtonOnThePopupAlert() {

        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
        wait.until(ExpectedConditions.alertIsPresent());

        Alert alert = driver.switchTo().alert();
        System.out.println("Alert Text: " + alert.getText());
        alert.accept();

    }

    @And("Verify Success submitted is visible")
    public void verifySuccessSubmittedIsVisible() {

        WebDriverWait wait = new WebDriverWait(Utility.getDriver(), Duration.ofSeconds(10));
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//div[@class='status alert alert-success']")));

    }

    @And("User click home button")
    public void userClickHomeButton() {

        WebElement homeButton =  driver.findElement(By.xpath("//a[@class='btn btn-success']"));
        homeButton.click();

    }

    @And("verify that login button is visible successfully")
    public void verifyThatLoginButtonIsVisibleSuccessfully() {

        WebDriverWait wait = new WebDriverWait(Utility.getDriver(), Duration.ofSeconds(10));
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//a[normalize-space()='Signup / Login']")));

    }

    @Then("Verify Please fill out this field. is visible on the email form")
    public void verifyPleaseFillOutThisFieldIsVisibleOnTheEmailForm() {

        WebElement emailForm = driver.findElement(By.xpath("//input[@placeholder='Email']"));

        JavascriptExecutor js = (JavascriptExecutor) driver;
        String validationMessage = (String) js.executeScript("return arguments[0].validationMessage;", emailForm);

        System.out.println("Validation Message : " + validationMessage);

    }
}
