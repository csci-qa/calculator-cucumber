Feature: Division
  As a mathematician
  I want my calculator to divide numbers
  So I can know their quotient

  Scenario: Dividing numbers to get their quotient
    When I divide one number by another number
    Then I get the quotient

  Scenario: Dividing by zero
    When I divide a number by zero
    Then

  Scenario: Dividing numbers in different orders
    When I divide by the same numbers in different orders
    Then the quotients are not the same

  Scenario: Dividing by more than two numbers
    When I divide by more than two numbers
    Then I get the quotient