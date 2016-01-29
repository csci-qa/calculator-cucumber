Feature: Multiplication
	As a programmer
	I want my calculator to multiply numbers
	So that I can see the product
	
	Scenario: Multiplying numbers to get a product
		When I multiply numbers
		Then I get a product
		
	Scenario: Multiplying numbers in different orders
		When I multiply numbers in different orders
		Then the products are the same
		
	Scenario: Multiplying a number by one
		When I multiply a number by one
		Then the product is the first number
		
	Scenario: Multiplying a number by zero
		When I multiply a number by zero
		Then the product is zero