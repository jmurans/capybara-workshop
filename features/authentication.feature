Feature: Authentication Feature

    Scenario: Test SingUp form and its elements
        Given I am on Appimation home page
        And I press SignUp button
        Then SignUp form appears
        And I Fill SignUp data
        And I Close SingUp form
        Then I don't see SignUp form

    Scenario: Test Login error message with invalid email and password
        Given I am on Appimation home page
        And I press top Login button 
        Then Login form appears
        And I enter invalid email credentials
        And I press Login button in Login form
        Then I see error message
       