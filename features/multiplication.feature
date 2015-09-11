Feature: Multiplication
  As a mathematician
  I want my calculator to multiply numbers
  So I can know their product

  Scenario: Multiplying numbers to get a product
    When I multiply two numbers
    Then I get the product
    
  Scenario: Multiplying numbers in different orders
    When I multiply the same numbers in different orders
    Then the products are the same
    
  