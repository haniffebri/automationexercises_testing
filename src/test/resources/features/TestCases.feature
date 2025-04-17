Feature: Test Case

  Scenario: Verify Test Case page is accessible without login
    Given launched browser
    And navigate to homepage
    When user click on Test Cases menu
    Then verify that Test Case page is loaded successfully

  Scenario: Verify Test Case page is accessible without login
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Login button
    And verify Login to your account is visible
    When user fill correct email "hanif@hanif.hanif"
    And user fill correct password "hanif@hanif.hanif"
    And click login button
    Then verify that Logged in as username is visible
    When user click on Test Cases menu
    Then verify that Test Case page is loaded successfully

  Scenario: Verify all test case titles are displayed correctly
    Given user is on the Test Case page
    Then verify all test case titles are visible
    And verify that total number of test case titles equals 26

  Scenario: Verify each test case expands on click
    Given user is on the Test Case page
    When user clicks on "Test Case 1: Register User"
    Then verify test steps for "Register User" are displayed

    When user clicks on "Test Case 2: Login User with correct email and password"
    Then verify test steps for "Login User with correct email and password" are displayed

  Scenario: Verify layout elements on Test Case page
    Given user is on the Test Case page
    Then verify that breadcrumb navigation is visible
    And verify page title "Test Cases" is visible
    And verify list of test cases is displayed

 Scenario: Verify Test Case numbering sequence is in correct order
    Given launched browser
    And navigate to homepage
    And user click on Test Cases button
    Then verify that test cases are numbered from 1 to 26 sequentially

  Scenario: Verify dropdown content appears after click on Test Case
    Given launched browser
    And navigate to homepage
    And user click on Test Cases button
    When user click on "Test Case 1: Register User"
    Then verify that test steps under Test Case 1 are visible

  Scenario: Verify user can open multiple Test Case dropdowns
    Given launched browser
    And navigate to homepage
    And user click on Test Cases button
    When user click on "Test Case 1: Register User"
    And user click on "Test Case 2: Login User with correct email and password"
    Then verify that both Test Case 1 and Test Case 2 steps are visible


