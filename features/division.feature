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

