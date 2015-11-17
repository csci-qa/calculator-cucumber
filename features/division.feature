Feature: Division
	I want my calculator to divide numbers
	
	Scenario: Dividing numbers will get a quotient
		When I divide two numbers
		Then I get the quotient
		
	Scenario: Dividing by one
		When I divide by one
		Then I get the non one integer
		
	Scenario: Dividing multiple numbers
		When I divide more than two numbers
		Then I get an answer in order
	
	Scenario: Dividing by zero
		When I divide by zero
		Then I get an error
		