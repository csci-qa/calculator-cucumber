Feature: Division
	As a programmer
	I want my calculator to divide numbers
	So that I can see the quotient
	
	Scenario: Dividing numbers to get a quotient
		When I divide numbers
		Then I get a quotient
		
	Scenario: Dividing numbers in different orders
		When I divide the same numbers in different orders
		Then the quotients are different
		
	Scenario: Dividing by one
		When I divide a number by one
		Then the quotient is the first number
		
	Scenario: Dividing zero by any integer other than zero
		When I divide zero by any number but zero
		Then the quotient is zero
		
	Scenario: Dividing a number by zero
		When I divide a number by zero
		Then there is an error
		