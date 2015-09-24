Feature: Subtraction
  As a mathematician
  I want my calculator to subtract numbers
  So I can know their difference

  Scenario: Subtracting numbers to get a sum
    When I subtract two numbers
    Then I get an integer
    Then I get the correct difference

  Scenario: Subtracting numbers in different orders
    When I subtract numbers in different orders
    Then the differences are different

  Scenario: Subtracting zero
    When I subtract zero from a number
    Then the difference is that number

  Scenario: Subtracting an integer from itself
    When I subtract an integer from itself
    Then I get zero

  Scenario: Subtracting more than two numbers
    When I subtract more than two numbers
    Then I get the correct difference
