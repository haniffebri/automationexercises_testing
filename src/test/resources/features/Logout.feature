Feature: Logout

  Scenario: Logout user with correct email and password
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'Login to your account' is visible
    When User fill correct email
    And User fill correct password
    And Click 'login' button
    And Verify that 'Logged in as username' is visible
    And Click 'Logout' button
    Then Verify that user is navigated to login page

  Scenario: Logout user with correct email and password
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'Login to your account' is visible
    When User fill correct email
    And User fill correct password
    And Click 'login' button
    And Verify that 'Logged in as username' is visible
    And Click 'Logout' button
    Then Verify that user is navigated to login page