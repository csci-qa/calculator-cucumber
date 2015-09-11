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
    
  