Feature: Subtraction
  As a mathmatican
  I want my calculator to subtract numbers
  So I can know their difference
 
   Scenario: Subtracting two integers to get an integer
    When I subtract two integers
    Then the difference is an integer

	Scenario: Subtracting numbers in different orders
		When I subtract the same numbers in different orders
		Then the differences are different
	
	Scenario: Subtracting zero
		When I subtract zero from a number
		Then the difference is that number
	
	Scenario: Subtracting an number by itself
		When I subtrac a number from itself
		Then the difference is zero
	
	Scenario: Subtracting multiple numbers
		When I subtract more than two numbers
		Then I get the difference 