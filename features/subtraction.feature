Feature: Subtraction
  As a mathematician
  I want my calculator to subract numbers
  So I can know their difference

  Scenario: Subracting numbers to get a total
    When I subtract two numbers
    Then I get the difference

  Scenario: Subracting zero
    When I subtract zero from a number
    Then the difference is that number

  Scenario: Subtracting numbers in different orders
    When I subtract the same numbers in different orders
    Then the sums are not the same

  Scenario: Subtracting more than two numbers
    When I subtract more than two numbers
    Then I get the total

  Scenario: Subtracting an integer from itself
    When I subtract a number from itself
    Then I get zero







