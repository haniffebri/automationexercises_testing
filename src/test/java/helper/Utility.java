package helper;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.edge.EdgeOptions;

import java.time.Duration;

public class Utility {
    public static WebDriver driver;

    public static WebDriver getDriver(){
        return driver;
    }
    public static void startDriver() {
        if (driver == null) { // Cegah multiple instance
            EdgeOptions options = new EdgeOptions();
            options.addArguments("--no-sandbox");
            options.addArguments("--disable-dev-shm-usage");
            options.addArguments("--remote-allow-origins=*");

            WebDriverManager.edgedriver().setup();
            driver = new EdgeDriver(options);
            driver.manage().window().maximize();
            driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(3));
        }
    }

    public static void quitDriver() {
        if (driver != null) {
            try {
                Thread.sleep(1000); // opsional
                driver.quit();
                driver = null;
                System.out.println("Driver quit successfully.");
            } catch (Exception e) {
                System.err.println("Failed to quit driver: " + e.getMessage());
            }
        } else {
            System.out.println("Driver already null.");
        }
    }
}

