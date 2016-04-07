Feature: Subtraction
  As a mathematician
  I want my calculator to Subtract numbers
  So I can know their sum

  Scenario: Subtracting numbers to get a sum
    When I subtract two numbers
    Then So it is

  Scenario: Subtract zero
    When I subtract zero to a number
    Then sum equals

  Scenario: Subtracting numbers in different orders
    When I subtract the same numbers in different orders
    Then the sums are different

  Scenario: Subtract more than two numbers
    When I subtract more than two numbers
    Then I get the sum of those numbers
