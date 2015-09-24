Feature: Multiplication
  As a mathematician
  I want my calculator to multiply numbers
  So I can know their product

  Scenario: Multiplying numbers to get the product
    When I multiply two numbers
	Then I get the product

  Scenario: Multiplying numbers in different orders
    When I multiply the same numbers in different orders
	Then the product is the same

  Scenario: Multiplying by one
    When I multiply a number by one
	Then the product should be the first number

  Scenario: Multiplying by zero
    When I multiply a number by zero
	Then the product should be zero

  Scenario: Multiplying more than two numbers
    When I multiply more than two numbers
	Then I get the product
