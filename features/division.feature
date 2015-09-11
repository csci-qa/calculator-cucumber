Feature: Division
  As a mathematician
  I want my calculator to divide numbers
  So I can know their quotient

  Scenario: Dividing numbers to get a quotient
    When I divide two numbers
    Then I get the quotient
    
  Scenario: Dividing numbers in different orders
    When I divide the same numbers in different orders
    Then the quotients are different
    
  Scenario: Dividing a number by one
    When I divide a number by one
    Then the quotient is that number
    
  Scenario: Dividing zero by a number
    When I divide zero by a number
    Then the quotient is zero
    
  Scenario: Dividing a number by zero
    When I divide a number by zero
    Then I recieve an error
    
  