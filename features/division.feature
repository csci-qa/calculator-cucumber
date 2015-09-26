Feature: Division
As a mathematician
I want my calculator to divide numbers
So I can know the rusult

Scenario: Divide two numbers returns and integer
When I divide by two interger
Then the result is returned

Scenario: Order of operation should matter when dividing
When I divide numbers
Then the order should matter and return the right result

Scenario: Dividing an Integer by the 1 should return the first Integer
When I divide an integer by one
Then I should return the first integer

Scenario: Dividing zero by an Integer should return zero
When I divide and integer by zero
Then I should be returned zero

Scenario: Dividing zero by an Integer should return an error
When I divide zero by an integer
Then an error should be returned

Scenario: Division method should execpt more than two number
When dividing more than two numbers
Then should return the result for more than two numbers
