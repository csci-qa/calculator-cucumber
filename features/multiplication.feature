Feature: Multiplication
  As a mathematician
  I want my calculator to multiply numbers
  So I can be lazy

  Scenario: Multiplying numbers to get a product
  	When I multiply two numbers
  	Then I get the product

  Scenario: Multiplying by zero
  	When I multiply a number by zero
  	Then the product is zero

  Scenario: Multiplying numbers in different orders
  	When I multiply numbers in different orders
  	Then the product is the same

  Scenario: Multiplying a number by one
  	When I multiply a number by one
  	Then the product is the first number

  Scenario: Multiplying more than two numbers
  	When I multiply more than two numbers
  	Then I get the total product
