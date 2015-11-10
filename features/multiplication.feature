Feature: Multiplication
	I want my calculator to multiply numbers
	
	Scenario: Multiplying numbers will get a product
		When I multiply two numbers
		Then I get the product
		
	Scenario: Multiplying by zero
		When I multiply by zero
		Then I get zero
		
	Scenario: Multiplying by one
		When I multiply by one
		Then I get the non one integer for a product
		
	Scenario: Multiplying multiple numbers
		When I multiply more than two numbers
		Then I get a product of multiple numbers
	