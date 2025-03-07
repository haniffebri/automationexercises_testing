Feature: Register

  Scenario: Register without filling email
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'New User Signup!' is visible
    When Fill name
    And Click 'Signup' button
    Then Verify 'Please fill out this field.' is visible

  Scenario: Register without filling name
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'New User Signup!' is visible
    When Fill email
    And Click 'Signup' button
    Then Verify 'Please fill out this field.' is visible

  Scenario: Register user with unregistered email
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'New User Signup!' is visible
    When Fill name
    And Fill email
    And Click 'Signup' button
    And Verify that 'ENTER ACCOUNT INFORMATION' is visible
    And Select Title
    And Fill Name
    And Fill Email
    And Fill Password
    And Select Date of birth
    And Select checkbox 'Sign up for our newsletter!'
    And Select checkbox 'Receive special offers from our partners!'
    And Fill First name
    And Fill Last name
    And Fill Company
    And Fill Address
    And Fill Address2
    And Fill Country
    And Fill State
    And Fill City
    And Fill Zipcode
    And Fill Mobile Number
    And Click 'Create Account button'
    Then Verify that 'ACCOUNT CREATED!' is visible
    And Click 'Continue' button
    And Verify that 'Logged in as username' is visible
    When Click 'Delete Account' button
    Then Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button

  Scenario: Register user with unregistered name
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'New User Signup!' is visible
    When Fill name registered
    And Fill email unregistered
    And Click 'Signup' button
    And Verify that 'ENTER ACCOUNT INFORMATION' is visible
    And Select Title
    And Fill Name
    And Fill Email
    And Fill Password
    And Select Date of birth
    And Select checkbox 'Sign up for our newsletter!'
    And Select checkbox 'Receive special offers from our partners!'
    And Fill First name
    And Fill Last name
    And Fill Company
    And Fill Address
    And Fill Address2
    And Fill Country
    And Fill State
    And Fill City
    And Fill Zipcode
    And Fill Mobile Number
    And Click 'Create Account button'
    Then Verify that 'ACCOUNT CREATED!' is visible
    And Click 'Continue' button
    And Verify that 'Logged in as username' is visible
    When Click 'Delete Account' button
    Then Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button

  Scenario: Register user with unregistered email and password
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'New User Signup!' is visible
    When Fill name
    And Fill email
    And Click 'Signup' button
    And Verify that 'ENTER ACCOUNT INFORMATION' is visible
    And Select Title
    And Fill Name
    And Fill Email
    And Fill Password
    And Select Date of birth
    And Select checkbox 'Sign up for our newsletter!'
    And Select checkbox 'Receive special offers from our partners!'
    And Fill First name
    And Fill Last name
    And Fill Company
    And Fill Address
    And Fill Address2
    And Fill Country
    And Fill State
    And Fill City
    And Fill Zipcode
    And Fill Mobile Number
    And Click 'Create Account button'
    Then Verify that 'ACCOUNT CREATED!' is visible
    And Click 'Continue' button
    And Verify that 'Logged in as username' is visible
    When Click 'Delete Account' button
    Then Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button

  Scenario: Register user with registered email
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'New User Signup!' is visible
    When Fill name
    And Fill email registered
    And Click 'Signup' button
    Then Verify that 'Email Address already exist!' is visible

  Scenario: Register user with Invalid Email Format (Missing @example.com)
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'New User Signup!' is visible
    When Fill name
    And Fill email with invalid format (missing @example.com)
    And Click 'Signup' button
    Then Verify that 'Please include an '@' in the email address. 'email' is missing an '@'.' is visible

  Scenario: Register user with registered name
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'New User Signup!' is visible
    When Fill name registered
    And Fill email unregistered
    And Click 'Signup' button
    And Verify that 'ENTER ACCOUNT INFORMATION' is visible
    And Select Title
    And Fill Name
    And Fill Email
    And Fill Password
    And Select Date of birth
    And Select checkbox 'Sign up for our newsletter!'
    And Select checkbox 'Receive special offers from our partners!'
    And Fill First name
    And Fill Last name
    And Fill Company
    And Fill Address
    And Fill Address2
    And Fill Country
    And Fill State
    And Fill City
    And Fill Zipcode
    And Fill Mobile Number
    And Click 'Create Account button'
    Then Verify that 'ACCOUNT CREATED!' is visible
    And Click 'Continue' button
    And Verify that 'Logged in as username' is visible
    When Click 'Delete Account' button
    Then Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button

  Scenario: Register user with registered name and email
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'New User Signup!' is visible
    When Fill name registered
    And Fill email registered
    And Click 'Signup' button
    Then Verify that 'Email Address already exist!' is visible

  Scenario: Register with Unregistered Email and Name Without Filling Account and Address Information
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'New User Signup!' is visible
    When Fill name registered
    And Fill email unregistered
    And Click 'Signup' button
    And Verify that 'ENTER ACCOUNT INFORMATION' is visible
    And Click 'Create Account button'
    Then Verify that 'Please fill out this field' is visible

  Scenario: Register with Unregistered Email and Name Without Filling Account and Address Information
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'New User Signup!' is visible
    When Fill name registered
    And Fill email unregistered
    And Click 'Signup' button
    And Verify that 'ENTER ACCOUNT INFORMATION' is visible
    And Click 'Create Account button'
    Then Verify that 'Please fill out this field' is visible