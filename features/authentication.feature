Feature: Authentication Feature

    Scenario: Test SingUp form and its elements
        Given I am on Appimation home page
        And I press SignUp button
        Then SignIn form appears
        And I Fill information
        And I Close SingUp form
        Then I don't see SignUp form

    Scenario: Test SignIn error message with invalid email and password
        Given I am on Appimation home page
        And I press SignIn button
        Then SignIn form appears
        And I enter invalid email and password
        And I press Login button
        Then I see error message
       