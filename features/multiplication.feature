Feature: Multiplication
  As a mathematician
  I want my calculator to multiply numbers
  So I can know their result

Scenario: When I multiply two numbers should return an integer
	When I multiply two numbers
	Then the two numbers should result an integer

Scenario: the order of operation should not matter (commutative)
	When I multiply two integers
	Then the order of operation should not matter

Scenario: multiplying an integer by one should return the first integer
	When I multiply an integer by one 
	Then it should return the first integer

Scenario: multiplying an integer by zero should return zero
	When I multiply an integer by zero
	Then it should return zero

Scenario: should accept more than 2 numbers at a time
	When I multiply more than 2 numbers at a time
	Then it should return the correct result