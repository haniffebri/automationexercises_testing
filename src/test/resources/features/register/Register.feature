Feature: Register

  Scenario: Register without filling email and name
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    And user click Signup button
    Then Verify Please fill out this field. is visible on the name field

  Scenario: Register without filling email
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input unregistered name
    And user click Signup button
    Then Verify Please fill out this field. is visible on the email field

  Scenario: Register without filling name
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input unregistered email
    And user click Signup button
    Then Verify Please fill out this field. is visible on the name field

  Scenario: Register using non-English characters
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input unregistered name "张伟张张伟张伟张伟张伟张伟张伟张伟张伟"
    And user input unregistered email "张伟张张张张伟张伟张伟张伟@أحمدأحمد.أحمدأحمد"
    And user click Signup button
    Then Verify Please fill out this field. is visible on the name field

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
    And Verify that Logged in as registered username is visible

  Scenario: Register using same email but different casing
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input registered name "yourName"
    And user input unregistered email "sdwdssafawfafwafdg@rebedsfdsgdsgsgbfwqdwefwebbdbrebebsdfsdfsde.com"
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
    And Verify that Logged in as registered username is visible

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
    And Verify that Logged in as unregistered username is visible

  Scenario: Register with whitespace around name or email
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input unregistered name " sdoiofddfsfsd "
    And user input unregistered email " sdioodssdwqffdsdsf@sdfdssqwfqaffqsaxvvd.ewtsdfgdfwqsgds "
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
    And Verify that Logged in as unregistered username is visible

  Scenario: Register user with registered email
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input unregistered name
    And user input registered email "ex4arfxc@example.com"
    And user click Signup button
    Then Verify that Email Address already exist! is visible

  Scenario: Register user with registered name
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
    And Verify that Logged in as registered username is visible

  Scenario: Register user with Invalid Email Format (Missing @example.com)
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input registered name "yourName"
    And Fill email with invalid format (missing @example.com) "example"
    And user click Signup button
    Then Verify that Please include an @ in the email address. email is missing an @. is visible


  Scenario: Register user with registered name and email
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input registered name "yourName"
    And user input registered email "ex4arfxc@example.com"
    And user click Signup button
    Then Verify that Email Address already exist! is visible

  Scenario: Register with Unregistered Email and Name Without Filling Account and Address Information
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input unregistered name
    And user input unregistered email
    And user click Signup button
    And Verify that ENTER ACCOUNT INFORMATION is visible
    And user click Create Account button
    Then Verify that Please fill out this field is visible on the password field

  Scenario: Register with invalid email format (missing .com)
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input registered name "yourName"
    And Fill email with invalid format (missing domain)
    And user click Signup button
    Then Verify that Please enter a part following @. is incomplete. is visible

  Scenario: Register with empty title
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input registered name "yourName"
    And user input unregistered email
    And user click Signup button
    And Verify that ENTER ACCOUNT INFORMATION is visible
    And user input Password
    And user select Date of birth
    And user select checkbox Sign up for our newsletter!
    And user select checkbox Receive special offers from our partners!
    And user input First name
    And user input Last name
    And user input Address
    And user input Country
    And user input State
    And user input City
    And user input Zipcode
    And user input Mobile Number
    And user click Create Account button
    Then Verify that ACCOUNT CREATED! is visible
    And user click Continue button
    And Verify that Logged in as registered username is visible

  Scenario: Register with empty password
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
    Then Verify that Please fill out this field is visible on the password field

  Scenario: Register with empty Date of Birth
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
    And Verify that Logged in as registered username is visible

  Scenario: Register without checklist news
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
    And Verify that Logged in as registered username is visible

  Scenario: Register without checklist offers
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
    And Verify that Logged in as registered username is visible

  Scenario: Register with empty First name
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
    Then Verify that Please fill out this field is visible on the First name field

  Scenario: Register with empty Last name
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
    And user input Company
    And user input Address
    And user input Address2
    And user input Country
    And user input State
    And user input City
    And user input Zipcode
    And user input Mobile Number
    And user click Create Account button
    Then Verify that Please fill out this field is visible on the Last name field

  Scenario: Register with empty Company
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
    And Verify that Logged in as registered username is visible

  Scenario: Register with empty Address
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
    And user input Address2
    And user input Country
    And user input State
    And user input City
    And user input Zipcode
    And user input Mobile Number
    And user click Create Account button
    Then Verify that Please fill out this field is visible on the Address field

  Scenario: Register with empty Address2
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
    And user input Address
    And user input Country
    And user input State
    And user input City
    And user input Zipcode
    And user input Mobile Number
    And user click Create Account button
    Then Verify that ACCOUNT CREATED! is visible
    And user click Continue button
    And Verify that Logged in as registered username is visible

  Scenario: Register with empty State
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
    And user input Address
    And user input Address2
    And user input Country
    And user input City
    And user input Zipcode
    And user input Mobile Number
    And user click Create Account button
    Then Verify that Please fill out this field is visible on the State field

  Scenario: Register with empty City
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
    And user input Address
    And user input Address2
    And user input Country
    And user input State
    And user input Zipcode
    And user input Mobile Number
    And user click Create Account button
    Then Verify that Please fill out this field is visible on the City field

  Scenario: Register with empty Zipcode
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
    And user input Address
    And user input Address2
    And user input Country
    And user input State
    And user input City
    And user input Mobile Number
    And user click Create Account button
    Then Verify that Please fill out this field is visible on the Zipcode field

  Scenario: Register with empty Mobile Number
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
    And user input Address
    And user input Address2
    And user input Country
    And user input State
    And user input City
    And user input Zipcode
    And user click Create Account button
    Then Verify that Please fill out this field is visible on the Mobile Number field

  Scenario: Register with long input values
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input long character unregistered name
    And user input long character unregistered email
    And user click Signup button
    And Verify that ENTER ACCOUNT INFORMATION is visible
    And user select Title
    And user input long character Password
    And user select Date of birth
    And user select checkbox Sign up for our newsletter!
    And user select checkbox Receive special offers from our partners!
    And user input long character First name
    And user input long character Last name
    And user input long character Company
    And user input long character Address
    And user input long character Address2
    And user input Country
    And user input long character State
    And user input long character City
    And user input long character Zipcode
    And user input long character Mobile Number
    And user click Create Account button
    Then Verify that ACCOUNT CREATED! is visible
    And user click Continue button
    And Verify that Logged in as unregistered username is visible

  Scenario: Register with special characters only in name field
    Given launched browser
    And navigate to homepage
    And verify that home page is visible successfully
    And user click on Signup button
    And Verify New User Signup! is visible
    When user input registered name "@@@###$$$"
    And user input unregistered email
    And user click Signup button
    Then Verify that ENTER ACCOUNT INFORMATION is visible
