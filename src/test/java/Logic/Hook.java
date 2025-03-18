package Logic;

import  io.cucumber.java.*;

import static Helper.utility.quitDriver;
import static Helper.utility.startDriver;

public class Hook {

    @Before
    public void beforeTest() {
        System.out.println("Bot Running");
        startDriver();
    }

    @After
    public void afterTest() throws InterruptedException {
        System.out.println("Finish");
        quitDriver();
    }
}
