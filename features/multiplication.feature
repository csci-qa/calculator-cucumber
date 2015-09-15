Feature: Multiplication
  As a mathematician
  I want my calculator to mutliply numbers
  so that I can know their product

  Scenario: multiplying numbers to get a product
    When I multiply two numbers
    Then I get an integer

  Scenario: Multiplying numbers in different order
    When I multiply numbers in different order
    Then the products are the same

  Scenario: Multipying an integer by one
    When I multiply an integer by one
    Then the product should be the integer other than one

  Scenario: Multiplying an integer by zero
    When I multiply an integer by zero
    Then the product should be zero

  Scenario: Multiplying more than two numbers
    When I multiply more than two numbers
    Then I get the product
