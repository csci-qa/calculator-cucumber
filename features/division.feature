Feature: Division
  As a mathematician
  I want my calculator to devide numbers
  So I can know their quotient

  Scenario: Divide numbers to get a quotient
    When I divide two numbers
    Then I get the quotient

  Scenario: Dividing by zero
    When I divide a number by zero
    Then I will get an error

  Scenario: Dividing numbers in different orders
    When I divide the same numbers in different orders
    Then the quotients are not the same

  Scenario: Dividing more than two numbers
    When I divide more than two numbers
    Then I get the quotient of each number divided by the next number

  Scenario: Dividing a number by one
    When I divide a number by one
    Then the quotient is that number

  Scenario: Dividing zero by an integer
    When I divide zero by an integer
    Then the quotient is zero