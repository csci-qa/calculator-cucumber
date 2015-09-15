Feature: Subtraction
  As a mathematician
  I want my calculator to subtract numbers
  So I can know their difference

  Scenario: Subtracting numbers to get the difference
    When I subtract two numbers
    Then I get the difference
  
  Scenario: Subtracting numbers in different orders
    When I subtract the same numbers in different order
    Then the differences are not the same

  Scenario: Subtracting zero
    When I subtract zero from a number
    Then the difference is the first integer

