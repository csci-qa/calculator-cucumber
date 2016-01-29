Feature: Subtraction
	as a mathamatician
	I want my calculator to subtract numbers
	so i can know their difference
	
	Scenario: when i subtract two numbers i get a difference
		When i subtract two numbers
		Then i get a difference
		
	Scenario: Adding zero
		When I subtract zero from a number
		Then the difference is that number
	
	Scenario: subtracting numbers in different orders
		When I subtract the same numbers in different orders
		Then the differences are not the same
		
	Scenario: Adding more than two numbers
		When I add more than two numbers
		Then I get the sum