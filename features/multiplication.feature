Feature: Multiplication
As a mathematician
I want my calculator to multiply numbers
So I can know the rusult

Scenario: When I multiply two numbers should return an integer
When I multiply two numbers
Then the two numbers should result an integer

Scenario: Multipying the order of operation should not matter (commutative)
When I multiply integers
Then the order of operation should not matter

Scenario: Multiplying an integer by one should return the first integer
When I multiply an integer by one
Then I should have returned the first 

Scenario: Multiplying an number by zero 
When I multiply an number by zero
Then it result should return zero

Scenario: Multiplication method should execpt more than two number
When multiplying more than two numbers
Then should return the result



