Feature: Division
  As a mathematician
  I want my calculator to divide numbers
  So I can know their quotient

  Scenario: Dividing numbers to get the quotient
    When I divide two numbers
	Then I get the quotient

  Scenario: Dividing numbers in different orders
    When I divide the same numbers in different orders
	Then the quotient is different

  Scenario: Dividing by one
    When I divide by one
	Then the quotient should be the first number

  Scenario: Dividing zero by another number
    When I divide zero by another number
	Then the quotient should be zero

  Scenario: Dividing by zero
    When I divide by zero
	Then an error should be raised

  Scenario: Dividing by more than two numbers
    When I divide by more than two numbers
	Then I get the quotient