Feature: Multiplying
	As a student I’m learning
	So I have to design a calculator
	So I can learn to agile develop.

Scenario: Multiplying numbers receive a sum
    When I multiply numbers
    Then I receive an answer
	
Scenario: Multiplying two numbers in any order receives a sum
	When the order of numbers is reversed
	Then the sum of those answers is the same
	
Scenario: when multiplying a number by one
	When I multiply a number by one
	Then I will receive the number that was multiplied by one
	
Scenario: When I multiply any numbers by zero
	When I multiply a number by zero
	Then I will receive a zero

Scenario: I can multiply more than two numbers
	When I multiply more than two numbers
	Then I will receive the sum of those numbers
