Feature: Contact Us

  Scenario: Submit Contact Form Without Login
    Given launched browser
    And navigate to homepage
    And verify that Contact Us button is visible successfully
    And user click on Contact Us button
    And Verify GET IN TOUCH is visible
    When User fill name form "hanif@hanif.hanif"
    And User fill email form "hanif@hanif.hanif"
    And User fill subject form "hanif@hanif.hanif"
    And User fill message form "hanif@hanif.hanif"
    And User upload file
    And User click submit button
    And User click ok button on the popup alert
    And Verify Success submitted is visible
    And User click home button
    Then verify that home page is visible successfully

  Scenario: Submit Contact Form Without Filling Any Form and Without Login
    Given launched browser
    And navigate to homepage
    And verify that Contact Us button is visible successfully
    And user click on Contact Us button
    And Verify GET IN TOUCH is visible
    And User click submit button
    Then Verify Please fill out this field. is visible on the email form

  Scenario: Submit Contact Form Without Filling Name Form and Without Login
    Given launched browser
    And navigate to homepage
    And verify that Contact Us button is visible successfully
    And user click on Contact Us button
    And Verify GET IN TOUCH is visible
    And User fill email form "hanif@hanif.hanif"
    And User fill subject form "hanif@hanif.hanif"
    And User fill message form "hanif@hanif.hanif"
    And User upload file
    And User click submit button
    And User click ok button on the popup alert
    And Verify Success submitted is visible
    And User click home button
    Then verify that home page is visible successfully

  Scenario: Submit Contact Form Without Filling Email Form and Without Login
    Given launched browser
    And navigate to homepage
    And verify that Contact Us button is visible successfully
    And user click on Contact Us button
    And Verify GET IN TOUCH is visible
    When User fill name form "hanif@hanif.hanif"
    And User fill subject form "hanif@hanif.hanif"
    And User fill message form "hanif@hanif.hanif"
    And User upload file
    And User click submit button
    Then Verify Please fill out this field. is visible on the email form

  Scenario: Submit Contact Form Without Filling Subject Form and Without Login
    Given launched browser
    And navigate to homepage
    And verify that Contact Us button is visible successfully
    And user click on Contact Us button
    And Verify GET IN TOUCH is visible
    When User fill name form "hanif@hanif.hanif"
    And User fill email form "hanif@hanif.hanif"
    And User fill message form "hanif@hanif.hanif"
    And User upload file
    And User click submit button
    And User click ok button on the popup alert
    And Verify Success submitted is visible
    And User click home button
    Then verify that home page is visible successfully

  Scenario: Submit Contact Form Without Filling Message Form and Without Login
    Given launched browser
    And navigate to homepage
    And verify that Contact Us button is visible successfully
    And user click on Contact Us button
    And Verify GET IN TOUCH is visible
    When User fill name form "hanif@hanif.hanif"
    And User fill email form "hanif@hanif.hanif"
    And User fill subject form "hanif@hanif.hanif"
    And User upload file
    And User click submit button
    And User click ok button on the popup alert
    And Verify Success submitted is visible
    And User click home button
    Then verify that home page is visible successfully

  Scenario: Submit Contact Form Without Attaching a File and Without Login
    Given launched browser
    And navigate to homepage
    And verify that Contact Us button is visible successfully
    And user click on Contact Us button
    And Verify GET IN TOUCH is visible
    When User fill name form "hanif@hanif.hanif"
    And User fill email form "hanif@hanif.hanif"
    And User fill subject form "hanif@hanif.hanif"
    And User fill message form "hanif@hanif.hanif"
    And User click submit button
    And User click ok button on the popup alert
    And Verify Success submitted is visible
    And User click home button
    Then verify that home page is visible successfully

  Scenario: Submit Contact Form With Login
    Given launched browser
    And navigate to homepage
    And verify that login button is visible successfully
    When user click on Login button
    And verify Login to your account is visible
    And user fill correct email "hanif@hanif.hanif"
    And user fill correct password "hanif@hanif.hanif"
    And click login button
    And verify that Logged in as username is visible
    And user click on Contact Us button
    And Verify GET IN TOUCH is visible
    And User fill name form "hanif@hanif.hanif"
    And User fill email form "hanif@hanif.hanif"
    And User fill subject form "hanif@hanif.hanif"
    And User fill message form "hanif@hanif.hanif"
    And User upload file
    And User click submit button
    And User click ok button on the popup alert
    And Verify Success submitted is visible
    And User click home button
    Then verify that home page is visible successfully

  Scenario: Submit Contact Form With Login and Without Filling Any Form
    Given launched browser
    And navigate to homepage
    And verify that login button is visible successfully
    When user click on Login button
    And verify Login to your account is visible
    And user fill correct email "hanif@hanif.hanif"
    And user fill correct password "hanif@hanif.hanif"
    And click login button
    And verify that Logged in as username is visible
    And user click on Contact Us button
    And Verify GET IN TOUCH is visible
    And User click submit button
    Then Verify Please fill out this field. is visible on the email form

  Scenario: Submit Contact Form With Login and Without Filling Name Form
    Given launched browser
    And navigate to homepage
    And verify that Contact Us button is visible successfully
    And user click on Contact Us button
    And Verify GET IN TOUCH is visible
    And User fill email form "hanif@hanif.hanif"
    And User fill subject form "hanif@hanif.hanif"
    And User fill message form "hanif@hanif.hanif"
    And User upload file
    And User click submit button
    And User click ok button on the popup alert
    And Verify Success submitted is visible
    And User click home button
    Then verify that home page is visible successfully

  Scenario:  Submit Contact Form With Login and Without Filling Email Form
    Given launched browser
    And navigate to homepage
    And verify that Contact Us button is visible successfully
    And user click on Contact Us button
    And Verify GET IN TOUCH is visible
    When User fill name form "hanif@hanif.hanif"
    And User fill subject form "hanif@hanif.hanif"
    And User fill message form "hanif@hanif.hanif"
    And User upload file
    And User click submit button
    Then Verify Please fill out this field. is visible on the email form

  Scenario: Submit Contact Form With Login and Without Filling Subject Form
    Given launched browser
    And navigate to homepage
    And verify that Contact Us button is visible successfully
    And user click on Contact Us button
    And Verify GET IN TOUCH is visible
    When User fill name form "hanif@hanif.hanif"
    And User fill email form "hanif@hanif.hanif"
    And User fill message form "hanif@hanif.hanif"
    And User upload file
    And User click submit button
    And User click ok button on the popup alert
    And Verify Success submitted is visible
    And User click home button
    Then verify that home page is visible successfully

  Scenario: Submit Contact Form With Login and Without Filling Message Form
    Given launched browser
    And navigate to homepage
    And verify that Contact Us button is visible successfully
    And user click on Contact Us button
    And Verify GET IN TOUCH is visible
    When User fill name form "hanif@hanif.hanif"
    And User fill email form "hanif@hanif.hanif"
    And User fill subject form "hanif@hanif.hanif"
    And User upload file
    And User click submit button
    And User click ok button on the popup alert
    And Verify Success submitted is visible
    And User click home button
    Then verify that home page is visible successfully

  Scenario: Submit Contact Form With Login and Without Attaching a File
    Given launched browser
    And navigate to homepage
    And verify that Contact Us button is visible successfully
    And user click on Contact Us button
    And Verify GET IN TOUCH is visible
    When User fill name form "hanif@hanif.hanif"
    And User fill email form "hanif@hanif.hanif"
    And User fill subject form "hanif@hanif.hanif"
    And User fill message form "hanif@hanif.hanif"
    And User click submit button
    And User click ok button on the popup alert
    And Verify Success submitted is visible
    And User click home button
    Then verify that home page is visible successfully