Feature: Division
  As a mathematician
  I want my calculator to divide numbers
  So I can know their quotient

  Scenario: Order of dividing numbers makes a difference
    When I divide two numbers in different orders
    Then I get different quotients

  Scenario: Dividing by zero
    When I divide a number by zero
    Then the quotient is an error

  Scenario: Dividing by one
    When I divide a number by one
    Then the quotient is that number
	
  Scenario: Dividing zero by a number
    When I divide zero by a number
	Then the quotient is zero
	
  Scenario: Dividing multiple numbers
    When I divide multiple numbers
    Then I get the quotient of multiple numbers

