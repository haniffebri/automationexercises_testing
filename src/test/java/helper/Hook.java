package helper;

import io.cucumber.java.*;

import static helper.Utility.quitDriver;
import static helper.Utility.startDriver;

public class Hook {

    @Before
    public void beforeTest() {
        System.out.println("Running Test");
        startDriver();
    }

    @After
    public void afterTest(){
        System.out.println("Finishing Test");
        quitDriver();
    }
}
