Feature: Register

  Scenario: Register user with email unregistered
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'New User Signup!' is visible
    When Enter name and email address
    And Click 'Signup' button
    And Verify that 'ENTER ACCOUNT INFORMATION' is visible
    And Fill details: Title, Name, Email, Password, Date of birth
    And Select checkbox 'Sign up for our newsletter!'
    And Select checkbox 'Receive special offers from our partners!'
    And Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
    And Click 'Create Account button'
    Then Verify that 'ACCOUNT CREATED!' is visible
    And Click 'Continue' button
    And Verify that 'Logged in as username' is visible
    When Click 'Delete Account' button
    Then Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button

  Scenario: Register user with email registered
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'New User Signup!' is visible
    When Enter name and email address
    And Click 'Signup' button
    Then Verify that 'Email Address already exist!' is visible

  Scenario: Register user with name registered
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'New User Signup!' is visible
    When Enter name and email address
    And Click 'Signup' button
    And Verify that 'Email Address already exist!' is visible
    And Fill details: Title, Name, Email, Password, Date of birth
    And Select checkbox 'Sign up for our newsletter!'
    And Select checkbox 'Receive special offers from our partners!'
    And Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
    And Click 'Create Account button'
    Then Verify that 'ACCOUNT CREATED!' is visible
    And Click 'Continue' button
    And Verify that 'Logged in as username' is visible
    When Click 'Delete Account' button
    Then Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button