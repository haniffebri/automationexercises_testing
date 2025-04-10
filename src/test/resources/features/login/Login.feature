Feature: Login

  Scenario: Login user with correct email and password
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Login button
    And Verify Login to your account is visible
    When User fill correct email "hanif@hanif.hanif"
    And User fill correct password "hanif@hanif.hanif"
    And Click login button
    Then Verify that Logged in as username is visible

  Scenario: Login user with incorrect email
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Login button
    And Verify Login to your account is visible
    When User fill incorrect email "hanif@hanif.hanifha"
    And User fill correct password "hanif@hanif.hanif"
    And Click login button
    Then Verify error Your email or password is incorrect! is visible

  Scenario: Login user with incorrect password
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Login button
    And Verify Login to your account is visible
    When User fill correct email "hanif@hanif.hanif"
    And User fill incorrect password "hanif@hanif.hanifhanif@hanif.hanif"
    And Click login button
    Then Verify error Your email or password is incorrect! is visible

  Scenario: Login user with incorrect email and password
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Login button
    And Verify Login to your account is visible
    When User fill incorrect email "hanif@hanif.hanifhanif"
    And User fill incorrect password "hanifhanif@hanif.hanif"
    And Click login button
    Then Verify error Your email or password is incorrect! is visible

  Scenario: Login user without filling email
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Login button
    And Verify Login to your account is visible
    And User fill correct password ""
    And Click login button
    Then Verify Please fill out this field. is visible on the email field

  Scenario: Login user without filling password
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Login button
    And Verify Login to your account is visible
    And User fill correct email ""
    And Click login button
    Then Verify Please fill out this field. is visible on the password field

  Scenario: Login user without filling email and password
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Login button
    And Verify Login to your account is visible
    And User fill correct email ""
    And User fill correct password ""
    And Click login button
    Then Verify Please fill out this field. is visible on the email field

  Scenario: Login user with Invalid Email Format (Missing @example.com)
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Login button
    And Verify Login to your account is visible
    And User fill email with invalid format (missing @example.com) "hanif"
    And User fill correct password ""
    And Click login button
    Then Verify that Please include an @ in the email address. email is missing an @. is visible on the email login field