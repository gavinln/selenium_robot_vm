import java.net.URL;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;


public class IFrameTest {
    public static void main(String[] args) throws Exception {
        // Create a new instance of the Firefox driver
        // Notice that the remainder of the code relies on the interface,
        // not the implementation.
        // WebDriver driver = new FirefoxDriver();
        WebDriver driver = new RemoteWebDriver(
                                new URL("http://localhost:4444/wd/hub"),
                                DesiredCapabilities.firefox());

        driver.get("http://www.slate.com/blogs/the_slatest/2013/06/28/gop_obamacare_nfl_mitch_mcconnell_warns_nfl_not_to_help_hhs_get_the_word.html");

        // Find the frame element by its css
        WebElement frame = (new WebDriverWait(driver, 10))
          .until(ExpectedConditions.presenceOfElementLocated(
            By.cssSelector("div.sl-article-fb-inner-container iframe")));

        System.out.println(driver.getCurrentUrl());
        driver.switchTo().frame(frame);
        System.out.println(driver.getCurrentUrl());

        //Close the browser
        driver.quit();
    }
}
