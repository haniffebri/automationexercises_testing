package stepdefinitions;

import helper.Utility;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import java.time.Duration;
import java.util.NoSuchElementException;
import java.util.Random;
import static helper.Utility.driver;

public class RegisterSteps {

    String registeredName;
    String unregisteredName;
    public String generateRandomString(int length) {
        String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"; // Karakter yang digunakan
        StringBuilder randomString = new StringBuilder();
        Random rnd = new Random();

        for (int i = 0; i < length; i++) {
            randomString.append(chars.charAt(rnd.nextInt(chars.length())));
        }

        return randomString.toString();
    }


    @Given("launched browser")
    public void launchedBrowser() {
        Utility.startDriver();
    }

    @And("navigate to homepage")
    public void navigateToHomepage() throws InterruptedException {

        driver.get("https://www.automationexercise.com/");
        Thread.sleep(2000);
    }

    @And("verify that home page is visible successfully")
    public void verifyThatHomePageIsVisibleSuccessfully() throws InterruptedException {

        WebDriverWait wait = new WebDriverWait(Utility.getDriver(), Duration.ofSeconds(10));
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//div[@class='item active']//h1[1]")));
        Thread.sleep(1000);
    }

    @And("user click on Signup button")
    public void userClickOnSignupButton() {

        WebElement logupButton =  driver.findElement(By.xpath("//a[normalize-space()='Signup / Login']"));
        logupButton.click();
    }

    @And("Verify New User Signup! is visible")
    public void verifyNewUserSignupIsVisible() {
        WebDriverWait wait = new WebDriverWait(Utility.getDriver(), Duration.ofSeconds(10));
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//h2[normalize-space()='New User Signup!']")));
    }

    @When("user input registered name {string}")
    public void userInputRegisteredName(String name) {
        registeredName = name;

        WebElement fillName = driver.findElement(By.xpath("//input[@placeholder='Name']"));
        fillName.sendKeys(name);

        System.out.println("Registered Name: " + name);
    }

    @When("user input unregistered name")
    public void userInputUnregisteredName() {

        String Name = generateRandomString(8);
        WebElement unregisNameField = driver.findElement(By.xpath("//input[@placeholder='Name']"));
        unregisNameField.sendKeys(Name);

        unregisteredName = Name;
        System.out.println("Unregistered Name: " + unregisteredName);
    }

    @And("user click Signup button")
    public void userClickSignupButton() {

        WebElement signupButton = driver.findElement(By.xpath("//button[normalize-space()='Signup']"));
        signupButton.click();
    }

    @Then("Verify Please fill out this field. is visible on the email field")
    public void verifyPleaseFillOutThisFieldIsVisibleEmail() throws InterruptedException {
        WebElement emailField = driver.findElement(By.xpath("//input[@data-qa='signup-email']"));

        JavascriptExecutor js = (JavascriptExecutor) driver;
        String validationMessage = (String) js.executeScript("return arguments[0].validationMessage;", emailField);

        System.out.println("Validation Message : " + validationMessage);
        Utility.quitDriver();
    }

    @Then("Verify Please fill out this field. is visible on the name field")
    public void verifyPleaseFillOutThisFieldIsVisibleName() throws InterruptedException {
        WebElement emailField = driver.findElement(By.xpath("//input[@placeholder='Name']"));

        JavascriptExecutor js = (JavascriptExecutor) driver;
        String validationMessage = (String) js.executeScript("return arguments[0].validationMessage;", emailField);

        System.out.println("Validation Message : " + validationMessage);
        Utility.quitDriver();
    }


    @When("user input unregistered email")
    public void userFillEmail() {
        String randomEmail = generateRandomEmail();

        WebElement fillEmail = driver.findElement(By.xpath("//input[@data-qa='signup-email']"));
        fillEmail.sendKeys(randomEmail);

        System.out.println("Generated Email : " + randomEmail);
    }

    public String generateRandomEmail() {
        String chars = "abcdefghijklmnopqrstuvwxyz1234567890";
        StringBuilder email = new StringBuilder();
        Random rnd = new Random();

        for (int i = 0; i < 8; i++) {
            email.append(chars.charAt(rnd.nextInt(chars.length())));
        }
        return email.toString() + "@example.com";
    }


    @And("user input unregistered email {string}")
    public void userInputUnregisteredEmail(String arg0) {
    }

    @And("Verify that ENTER ACCOUNT INFORMATION is visible")
    public void verifyThatENTERACCOUNTINFORMATIONIsVisible() {
    }

    @And("user select Title")
    public void userSelectTitle() {

        WebDriverWait wait = new WebDriverWait(Utility.getDriver(), Duration.ofSeconds(10));
        WebElement Title = driver.findElement(By.cssSelector("#id_gender1"));

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//b[normalize-space()='Enter Account Information']")));
        Title.click();

    }

    @And("user input Name {string}")
    public void userInputName(String arg0) {
    }

    @And("user input Email {string}")
    public void userInputEmail(String arg0) {
    }

    @And("user input Password")
    public void userInputPassword() {

        String password = generateRandomString(10); // Generate password 10 karakter
        WebElement passwordField = driver.findElement(By.xpath("//input[@id='password']"));
        passwordField.sendKeys(password);
        System.out.println("Generated Password: " + password);

    }

    @And("user select Date of birth")
    public void userSelectDateOfBirth() {

        WebElement date = driver.findElement(By.xpath("//select[@id='days']"));
        WebElement month = driver.findElement(By.xpath("//select[@id='months']"));
        WebElement year = driver.findElement(By.xpath("//select[@id='years']"));

        Select selectDate = new Select(date);
        Select selectMonth = new Select(month);
        Select selectYear = new Select(year);

        Random rand = new Random();
        int randomDate = rand.nextInt(31) + 1;
        selectDate.selectByIndex(randomDate);

        int randomMonth = rand.nextInt(12) + 1;
        selectMonth.selectByIndex(randomMonth);

        int minYear = 1900;
        int maxYear = 2021;
        int randomYear = rand.nextInt(maxYear - minYear + 1) + minYear;
        selectYear.selectByVisibleText(String.valueOf(randomYear));

        System.out.println("Selected Date: " + selectDate.getFirstSelectedOption().getText());
        System.out.println("Selected Month: " + selectMonth.getFirstSelectedOption().getText());
        System.out.println("Selected Year: " + selectYear.getFirstSelectedOption().getText());

    }

    @And("user select checkbox Sign up for our newsletter!")
    public void userSelectCheckboxSignUpForOurNewsletter() {

        WebElement news = driver.findElement(By.xpath("//label[normalize-space()='Sign up for our newsletter!']"));
        news.click();

    }

    @And("user select checkbox Receive special offers from our partners!")
    public void userSelectCheckboxReceiveSpecialOffersFromOurPartners() {

        WebElement offer = driver.findElement(By.xpath("//label[normalize-space()='Receive special offers from our partners!']"));
        offer.click();

    }

    @And("user input First name")
    public void userInputFirstName() {

        String firstName = generateRandomString(8);
        WebElement firstNameField = driver.findElement(By.xpath("//input[@id='first_name']"));
        firstNameField.sendKeys(firstName);
        System.out.println("Generated First Name: " + firstName);

    }

    @And("user input Last name")
    public void userInputLastName() {

        String lastName = generateRandomString(8);
        WebElement lastNameField = driver.findElement(By.xpath("//input[@id='last_name']"));
        lastNameField.sendKeys(lastName);
        System.out.println("Generated Last Name: " + lastName);

    }

    @And("user input Company")
    public void userInputCompany() {

        String company = "Company-" + generateRandomString(6);
        WebElement companyField = driver.findElement(By.xpath("//input[@id='company']"));
        companyField.sendKeys(company);
        System.out.println("Generated Company Name: " + company);

    }

    @And("user input Address")
    public void userInputAddress() {

        String address = generateRandomString(12) + " Street";
        WebElement addressField = driver.findElement(By.cssSelector("#address1"));
        addressField.sendKeys(address);
        System.out.println("Generated Address: " + address);

    }

    @And("user input Address2")
    public void userInputAddress2() {

        String address2 = generateRandomString(12) + " Street";
        WebElement addressField = driver.findElement(By.cssSelector("#address2"));
        addressField.sendKeys(address2);
        System.out.println("Generated Address 2: " + address2);

    }

    @And("user input Country")
    public void userInputCountry() {

        WebElement country = driver.findElement(By.xpath("//select[@id='country']"));
        Select sCountry = new Select(country);

        sCountry.selectByVisibleText("India");
    }

    @And("user input State")
    public void userInputState() {

        String state = generateRandomString(6);
        WebElement stateField = driver.findElement(By.xpath("//input[@id='state']"));
        stateField.sendKeys(state);
        System.out.println("Generated State: " + state);

    }

    @And("user input City")
    public void userInputCity() {

        String city = generateRandomString(7);
        WebElement cityField = driver.findElement(By.xpath("//input[@id='city']"));
        cityField.sendKeys(city);
        System.out.println("Generated City: " + city);

    }

    @And("user input Zipcode")
    public void userInputZipcode() {

        String zipcode = generateRandomString(6);
        WebElement zipcodeField = driver.findElement(By.xpath("//input[@id='zipcode']"));
        zipcodeField.sendKeys(zipcode);
        System.out.println("Generated Zipcode: " + zipcode);

    }

    @And("user input Mobile Number")
    public void userInputMobileNumber() {

        String mobileNumber = "+62" + generateRandomString(10);
        WebElement mobileField = driver.findElement(By.xpath("//input[@id='mobile_number']"));
        mobileField.sendKeys(mobileNumber);
        System.out.println("Generated Mobile Number: " + mobileNumber);

    }

    @And("user click Create Account button")
    public void userClickCreateAccountButton() {

        WebElement createButton = driver.findElement(By.xpath("//button[normalize-space()='Create Account']"));
        createButton.click();

    }

    @Then("Verify that ACCOUNT CREATED! is visible")
    public void verifyThatACCOUNTCREATEDIsVisible() {

        WebElement created = driver.findElement(By.xpath("//b[normalize-space()='Account Created!']"));
        created.isDisplayed();

    }

    @And("user click Continue button")
    public void userClickContinueButton() {

        WebElement Continue = driver.findElement(By.xpath("//a[normalize-space()='Continue']"));
        Continue.click();

    }

    @And("Verify that Logged in as registered username is visible")
    public void verifyThatLoggedInAsRegistUsernameIsVisible() throws InterruptedException {

        WebElement loggedInElement = driver.findElement(By.xpath("//li[10]//a[1]"));

        String actualText = loggedInElement.getText().trim();
        String displayedName = actualText.replace("Logged in as ", "").trim();

        System.out.println("Logged in as " + displayedName);
        Utility.quitDriver();

    }

    @And("Verify that Logged in as unregistered username is visible")
    public void verifyThatLoggedInAsUnregistUsernameIsVisible() throws InterruptedException {

        WebElement loggedInElement = driver.findElement(By.xpath("//li[10]//a[1]"));

        String actualText = loggedInElement.getText().trim();
        String displayedName = actualText.replace("Logged in as ", "").trim();

        System.out.println("Logged in as " + displayedName);
        Utility.quitDriver();

    }


    @And("user input registered email {string}")
    public void userInputRegisteredEmail(String regisEmail) throws InterruptedException {

        WebElement fillregisEmail = driver.findElement(By.xpath("//input[@data-qa='signup-email']"));
        fillregisEmail.sendKeys(regisEmail);
        Thread.sleep(3000);
    }

    @Then("Verify that Email Address already exist! is visible")
    public void verifyThatEmailAddressAlreadyExistIsVisible() throws InterruptedException {
        try {
            WebElement errorMessage = driver.findElement(By.xpath("//p[normalize-space()='Email Address already exist!']"));

            String actualText = errorMessage.getText().trim();
            String expectedText = "Email Address already exist!";
            Assert.assertEquals("Error message is incorrect!", expectedText, actualText);

            System.out.println("Error message displayed correctly: " + actualText);
        } catch (NoSuchElementException e) {
            System.out.println("Error message not found!");
        }
        Utility.quitDriver();
    }

    @And("Click on Signup/Login button")
    public void clickOnSignupLoginButton() {
    }

    @When("Fill name")
    public void fillName() {
    }

    @And("Fill email registered")
    public void fillEmailRegistered() {
    }

    @And("Click Signup button")
    public void clickSignupButton() {
    }

    @And("Fill email with invalid format \\(missing @example.com) {string}")
    public void fillEmailWithInvalidFormatMissingExampleCom(String arg0) {
    }

    @Then("Verify that Please include an @ in the email address. email is missing an @. is visible")
    public void verifyThatPleaseIncludeAnInTheEmailAddressEmailIsMissingAnIsVisible() {
    }

    @Then("Verify that Please fill out this field is visible")
    public void verifyThatPleaseFillOutThisFieldIsVisible() {
    }
}
