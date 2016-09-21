Feature: Subtraction
  As a Mathematician
  I want my calculator to subtract a number from the other
  So I can know the difference between them
	
  Scenario: Subtracting one number from the other to get the difference
	When I subtract one number from the other
	Then I get the difference between the numbers
	  
  Scenario: Subtracting zero
	When I subtract zero from a number
	Then the difference between the numbers remains that number
	
  Scenario: Subtracting number in different orders
	When I subtract the same numbers in different orders
	Then the difference between the numbers are different