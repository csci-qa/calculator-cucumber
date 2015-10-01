Feature: Multiplication
  As a mathematician
  I want my calculator to multiply numbers
  So I don't have to

   Scenario: Multiply numbers to get a product
    When I multiply two numbers
    Then I get the product

   Scenario: Multiply by zero
  	When I multiply a number by zero
  	Then the product is zero

   Scenario: Multiply numbers in a different order
  	When I multiply numbers in a different order
  	Then the product is the same

   Scenario: Multiply a number by one
   	When I multiply a number by one
  	Then the product is the first number

   Scenario: Multiply more than two numbers
  	When I multiply more than two numbers
  	Then I get the total product