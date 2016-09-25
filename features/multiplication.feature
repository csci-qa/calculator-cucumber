Feature: Multiplication
	As a mathematician
	I want my calculator to multiply numbers
	So I can know their product
	
	Scenario: Multiplying numbers to get a product
	When I multiply two numbers
	Then I get their product
	
	Scenario: Multiplying by zero
	When I multiply by zero
	Then the product is also zero
	
	Scenario: Multiplying a number by one
	When I multiply a number by one
	Then the product is the same as the number
	
	Scenario: Multiplying numbers in different orders
	When I multiply the same numbers in different orders
	Then the products are the same
	