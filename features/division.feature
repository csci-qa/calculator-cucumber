Feature: Division
  As a mathematician
  I want my calculator to divide numbers
  So I can know their dividend

  Scenario: Dividing numbers to get a dividend
    When I divide two numbers
    Then I get the dividend

  Scenario: Dividing zero
    When I divide a number by zero
    Then the dividend is infinity

  Scenario: Dividing numbers in different orders
    When I divide the same numbers in different orders
    Then the dividends are different

  Scenario: Dividing more than two numbers
    When I divide more than two numbers
    Then I get the dividend
