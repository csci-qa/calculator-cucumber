Feature: Division
   As a mathematician
   I want my calculator to divide numbers
   So I don't have to 

  Scenario: Divide numbers to get a quotient
    When I divide two numbers
    Then I get the quotient

  Scenario: Divide a number by one
    When I divide a number by one
    Then the quotient should be the number

  Scenario: Divide zero by an integer
    When I divide zero by a integer
    Then the quotient is zero

  Scenario: Divide more than two numbers
    When I divide more than two numbers
    Then I get the quotient

  Scenario: Divide numbers in different order
    When I divide the same numbers in different orders
    Then the quotients are not the same