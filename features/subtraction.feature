Feature: Subtraction
	As a programmer
	I want my calculator to subtract numbers
	So that I can see the difference
	
	Scenario: Subtracting numbers to get a difference
		When I subtract numbers
		Then I get the difference
		
	Scenario: Subtracting numbers in different orders
		When I subtract the same numbers in different orders
		Then the sums are different
		
	Scenario: Subtracting zero
		When I subtract zero from a number
		Then the difference is the first number
		
	Scenario: Subtracting a number from itself
		When I subtract a number from itself
		Then the difference is zero
