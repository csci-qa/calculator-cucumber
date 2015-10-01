Feature: Subtraction
  As a mathematician
  I want my calculator to subtract numbers
  So I don't have to

  Scenario: Subtract numbers to get the difference
    When I subtract two numbers
    Then I get the difference
  
  Scenario: Subtract numbers in different orders
    When I subtract the same numbers in different orders
    Then the differences are not the same

  Scenario: Subtract by zero
    When I subtract zero from a number
    Then the difference is the first integer
 
  Scenario: Subtract an integer from itself
    When I subtract an integer from itself
    Then the difference is zero

  Scenario: Subtract more than two numbers
    When I subtract more than two numbers
    Then I get the total
	
	
