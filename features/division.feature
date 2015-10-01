Feature: Division
  As a mathematician
  I want my calculator to divide numbers
  So I can know their result

 Scenario: should return an integer
  	When I divide 2 numbers
 	Then it should result an integer

 Scenario: the order of operation should matter not commutative
 	When I divide two integers
 	Then the order of operation should matter not commutative

 Scenario: dividing an integer by one should return the first integer
 	When I divide an integer by one
 	Then it should return the 1st integer

 Scenario: dividing zero by an integer should return zero
 	When I divide zero by an integer
 	Then the result is zero

 Scenario: dividing an integer by zero should raise an error
 	When I divide an integer by 0
 	Then the result should raise an error

 Scenario: should accept more than 2 numbers at a time
 	When I divide more than 2 numbers at a time
 	Then I should get the correct result