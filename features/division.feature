Feature: Division
	As a mathematician
	I want my calculator to divide numbers
	So I can know their quotient
	
	Scenario: Dividing numbers to get a quotient
	When I divide two numbers
	Then I get their quotient
	
	Scenario: Dividing numbers by zero
	When I divide a number by zero
	Then there is an error
	
	Scenario: Dividing numbers in different orders
	When I divide the same numbers in different orders
	Then the quotient is different
	
	Scenario: Dividing zero by a number
	When I divide zero by a number
	Then the quotient is zero
	
	Scenario: Dividing by one
	When I divide a number by one
	Then the quotient is the same as the numerator