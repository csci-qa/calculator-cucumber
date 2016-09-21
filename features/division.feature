Feature: Division
  As a Mathematician
  I want my calculator to divide numbers
  So I can know their quotient
	
  Scenario: Dividing two numbers to get their quotient
	When I divide a number by another number
	Then I get the quotient
	  
  Scenario: Dividing a number by zero
	When I divide a number by zero
	Then I get a ZeroDivisionError which equals zero
	  
  Scenario: Dividing number in different orders
    When I divide the same numbers in different orders
	Then the quotients are different