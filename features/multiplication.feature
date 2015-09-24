Feature: Multiplication
  As a mathematician
  I want my calculator to multiply numbers
  So I can know their product

  Scenario: Multiplying numbers to get a product
    When I multiply two numbers
    Then I get an integer
    Then I get the correct product

  Scenario: Multiplying numbers in different orders
    When I multiply numbers in different orders
    Then the products are the same

  Scenario: Multiplying by one
    When I multiply an integer by one
    Then the product is the integer

  Scenario: Multiplying by zero
    When I multiply an interger by zero
    Then the product is zero

  Scenario: Multiplying more than two numbers
    When I multiply more than two numbers
    Then I get the correct product
