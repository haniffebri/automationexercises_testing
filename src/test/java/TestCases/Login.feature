Feature: Login

  Scenario: Login user with correct email and password
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'Login to your account' is visible
    When User fill correct email
    And User fill correct password
    And Click 'login' button
    Then Verify that 'Logged in as username' is visible
    When Click 'Delete Account' button
    Then Verify that 'ACCOUNT DELETED!' is visible

  Scenario: Login user with incorrect email
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'Login to your account' is visible
    When User fill incorrect email
    And User fill correct password
    And Click 'login' button
    Then Verify error 'Your email or password is incorrect!' is visible

  Scenario: Login user with incorrect password
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'Login to your account' is visible
    When User fill correct email
    And User fill incorrect password
    And Click 'login' button
    Then Verify error 'Your email or password is incorrect!' is visible

  Scenario: Login user with incorrect email and password
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'Login to your account' is visible
    When User fill incorrect email
    And User fill incorrect password
    And Click 'login' button
    Then Verify error 'Your email or password is incorrect!' is visible

    