Feature: Subtraction
As a mathematician
I want my calculator to subtract numbers
So I can know the rusult

Scenario: Subtract method should return an integer
When I enter two number
Then it should return an integer

Scenario: Subtract method the order of operation should matter
When I subtract two numbers
Then the order of operation should matter

Scenario: Subtracting zero from an integer the same number should be returned
When subtracting zero from an integer 
Then the first number should be returned

Scenario: Subtacting an integer from itself should return zero
When I subtract the same number from a number
Then it should return zero

Scenario: Subtraction method should accept more than 2 numbers at a time
When I subtract more than two numbers
Then the result should be returned



