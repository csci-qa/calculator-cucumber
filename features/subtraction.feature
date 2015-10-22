Feature: Subtraction
  As a mathematician
  I want my calculator to subtract numbers
  So I can know their result

  Scenario: Subtracting numbers to get a result
    When I subtract two numbers
    Then I get the result

  Scenario: Subracting zero
    When I subtract zero from a number
    Then the result is that number

  Scenario: Subtracting numbers in different orders
    When I subtract the same numbers in different orders
    Then the results are different

  Scenario: Subracting more than two numbers 
    When I subtract more than two numbers
    Then I get the result
