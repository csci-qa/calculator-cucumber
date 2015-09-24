Feature: Division
  As a mathematician
  I want my calculator to divide numbers
  So I can know their quotient

  Scenario: Dividing numbers to get a quotient
    When I divide two numbers
    Then I get an integer
    Then I get the correct quotient

  Scenario: Dividing numbers in different orders
    When I divide numbers in different orders
    Then the quotients are different

  Scenario: Dividing by one
    When I divide by one
    Then I get the original number

  Scenario: Dividing zero by an integer
    When I divide zero by an integer
    Then the quotient is zero

  Scenario: Dividing by zero
    When I divide by zero
    Then I get an error

  Scenario: Dividing more than two numbers
    When I divide more than two numbers
    Then I get the correct quotient
