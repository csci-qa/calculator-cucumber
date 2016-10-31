Feature: Division
  As a mathematician
  I want my calculator to divide numbers
  So I can know their quotients

  Scenario: Dividing numbers to get a quotient
    When I divide two numbers
    Then I get the quotient

  Scenario: Dividing by zero
    When I divide by zero
    Then it will raise an error
	
  Scenario: Diving zero by a number
    When I divide zero by a number
    Then the quotient will be zero
	
  Scenario: Dividing by itself
    When I divide the number by itself
    Then the quotient is one

  Scenario: Dividing numbers in different orders
    When I divide the same numbers in different orders
    Then the quotients are different

  Scenario: Dividing more than two numbers
    When I divide more than two numbers
    Then I get the total quotient
