Feature: Division
  As a mathmatician
  I want my calculator to divide numbers
  So I can know their quotient
 
	Scenario: Dividing an number by its least common denominator returns an integer
	When I divide an number by its least common denominator
    Then the quotient is an integer

	Scenario: Dividing numbers in different orders
		When I divide the same numbers in different orders
		Then the quotients are different

	Scenario: Dividing by one
		When I divide number by one
		Then I get that number
	
	Scenario: Dividing zero
		When I divide zero by a number
		Then I get zero
		
	Scenario: Dividing by zero
		When I divide a number by zero
		Then I get an error
	
	Scenario: Dividing multiple numbers
		When I divide more than two numbers
		Then I get the quotient 