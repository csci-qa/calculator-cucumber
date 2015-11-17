Feature: Subtraction
	I want my calculator to subtract numbers

	Scenario: Subtracting numbers to get a result
		When I subtract two numbers
		Then I get the result
		
	Scenario: Subtracting zero
		When I subtract zero from a number
		Then the result is that number
	
	Scenario: Subtracting numbers in different orders
		When I subtract the same numbers in different orders
		Then I get a different result
		
	Scenario: Subtracting more than two numbers
		When I subtract more than two numbers
		Then I get a result
		
		