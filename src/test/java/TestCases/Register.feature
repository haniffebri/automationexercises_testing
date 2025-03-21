Feature: Register

  Scenario: Register without filling email
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input unregistered name
    And user click Signup button
    Then Verify Please fill out this field. is visible

  Scenario: Register without filling name
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input unregistered email
    And user click Signup button
    Then Verify Please fill out this field. is visible

  Scenario: Register user with unregistered email
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input registered name "yourName"
    And user input unregistered email
    And user click Signup button
    And Verify that ENTER ACCOUNT INFORMATION is visible
    And user select Title
    And user input Password
    And user select Date of birth
    And user select checkbox Sign up for our newsletter!
    And user select checkbox Receive special offers from our partners!
    And user input First name
    And user input Last name
    And user input Company
    And user input Address
    And user input Address2
    And user input Country
    And user input State
    And user input City
    And user input Zipcode
    And user input Mobile Number
    And user click Create Account button
    Then Verify that ACCOUNT CREATED! is visible
    And user click Continue button
    And Verify that Logged in as username is visible

  Scenario: Register user with unregistered name
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input unregistered name
    And user input registered email "ex4arfxc@example.com"
    And user click Signup button
    Then Verify that Email Address already exist! is visible

  Scenario: Register user with unregistered email and password
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input unregistered name
    And user input unregistered email
    And user click Signup button
    And Verify that ENTER ACCOUNT INFORMATION is visible
    And user select Title
    And user input Password
    And user select Date of birth
    And user select checkbox Sign up for our newsletter!
    And user select checkbox Receive special offers from our partners!
    And user input First name
    And user input Last name
    And user input Company
    And user input Address
    And user input Address2
    And user input Country
    And user input State
    And user input City
    And user input Zipcode
    And user input Mobile Number
    And user click Create Account button
    Then Verify that ACCOUNT CREATED! is visible
    And user click Continue button
    And Verify that Logged in as username is visible

  Scenario: Register user with registered email
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When Fill name
    And Fill email registered
    And Click Signup button
    Then Verify that Email Address already exist! is visible

  Scenario: Register user with registered name
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input registered name "yourName"
    And user input unregistered email "yourEmail"
    And user click Signup button
    And Verify that ENTER ACCOUNT INFORMATION is visible
    And user select Title
    And user input Name "a"
    And user input Email "a"
    And user input Password "a"
    And user select Date of birth
    And user select checkbox Sign up for our newsletter!
    And user select checkbox Receive special offers from our partners!
    And user input First name "a"
    And user input Last name "a"
    And user input Company "a"
    And user input Address "a"
    And user input Address2 "a"
    And user input Country "a"
    And user input State "a"
    And user input City "a"
    And user input Zipcode "a"
    And user input Mobile Number "a"
    And user click Create Account button
    Then Verify that ACCOUNT CREATED! is visible
    And user click Continue button
    And Verify that Logged in as username is visible

  Scenario: Register user with Invalid Email Format (Missing @example.com)
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input registered name "yourName"
    And Fill email with invalid format (missing @example.com) "blabla@example.com"
    And Click Signup button
    Then Verify that Please include an @ in the email address. email is missing an @. is visible


  Scenario: Register user with registered name and email
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input registered name "yourName"
    And user input registered email "yourEmail"
    And user click Signup button
    Then Verify that Email Address already exist! is visible

  Scenario: Register with Unregistered Email and Name Without Filling Account and Address Information
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input unregistered name "yourName"
    And user input unregistered email "yourEmail"
    And user click Signup button
    And Verify that ENTER ACCOUNT INFORMATION is visible
    And user click Create Account button
    Then Verify that Please fill out this field is visible

  Scenario: Register with Unregistered Email and Name Without Filling Account and Address Information
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input unregistered name "yourName"
    And user input unregistered email "yourEmail"
    And user click Signup button
    And Verify that ENTER ACCOUNT INFORMATION is visible
    And user click Create Account button
    Then Verify that Please fill out this field is visible