Feature: Multiplication
  I want my calculator to multiply numbers
  So I can know their product
 
    Scenario: Multiplying two integers to get an integer
		When I multiply two integers
		Then the product is an integer

	Scenario: Multiplying numbers in different orders
		When I multiply the same numbers in different orders
		Then the pruducts are the same
		
	Scenario: Multiplying an number by one
		When I multiply a number by one
		Then the pruduct is the number
		
	Scenario: Multiplying zero
		When I multiply a number by zero
		Then the pruduct is zero

	Scenario: Multiplying multiple numbers
		When I multiply more than two numbers
		Then I get the pruduct 