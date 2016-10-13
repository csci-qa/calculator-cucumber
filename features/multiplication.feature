Feature: Multiplication
  As a Mathematician
  I want my calculator to multiply numbers
  So I can know their product
	
  Scenario: Multiplying two numbers to get a product
	When I multiply two numbers
	Then I get the product
	  
  Scenario: Multiplying a number by zero
	When I multiply a number by zero
	Then the product equals zero
	  
  Scenario: Multiplying numbers in different orders
	When I multiply the same numbers in different order
    Then the products are the same