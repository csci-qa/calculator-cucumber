Feature: Subtraction
  As a mathematician
  I want my calculator to subtract numbers
  So I can know their result

Scenario: should return an integer
	When I enter two numbers
    Then I get the result as an integer

Scenario: the order of operation should matter (not commutative)
	When I subtract two numbers 
	Then the order of operation should matter

Scenario: subtracting zero should return the first integer
	When I subtract zero from an integer
	Then the first number should be returned

Scenario: subtracting an integer from itself should return zero
	When I subtract an integer from itself
	Then the result should return zero

Scenario: should accept more than 2 numbers at a time
	When I subtract more than 2 numbers
	Then I should get the result


