Feature: Multiplication
  As a mathematician
  I want my calculator to multiply numbers
  So I can know their product

  Scenario: Multiply numbers to get a product
    When I multiply two numbers
    Then I get the product

  Scenario: Multiplying by zero
    When I multiply a number by zero
    Then the product is zero

  Scenario: Multiplying numbers in different orders
    When I multiply the same numbers in different orders
    Then the products are equal

  Scenario: Multiplying more than two numbers
    When I multiply more than two numbers
    Then the product is each of them multiplied by each other

  Scenario: Multiplying by one
    When I multiply a number by one
    Then the product equals the non-one number