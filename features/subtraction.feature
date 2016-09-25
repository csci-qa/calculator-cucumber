Feature: Subtraction
	As a mathematician
	I want my calculator to subtract numbers
	So I can know their value
	
	Scenario: Subtracting numbers to get a value
		When I subtract two numbers
		Then I get the value
		
	Scenario: Subtracting numbers in different orders
		When I subtract the same numbers in different orders
		Then my value can be negative
	
	Scenario: Subtracting by zero
		When I subtract by zero
		Then my numerator stays the same
	
	Scenario: Subtracting zero by a number
		When I subtract zero by a number
		Then my second number stays the same
		