Feature: Division
  As a mathematician
  I want my calculator to divide numbers
  So i can know their quotient

  Scenario: Dividing numbers to get a quotient
    When I divide two numbers
    Then I get the quotient

  Scenario: Dividing numbers in different order
    When I divide the same numbers in different orders
    Then the quotients are not the same

  Scenario: Dividing a number by one
    When I divide a number by one
    Then the quotient should be the number

  Scenario: Dividing a zero by an integer
    When I divide a zero by an integer
    Then the quotient is zero
