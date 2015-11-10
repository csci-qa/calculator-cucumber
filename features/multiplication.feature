Feature: Multiplication
  As a mathematician
  I want my calculator to multiply numbers
  So I can know their product

  Scenario: Multiplying numbers to get a product
    When I multiply two numbers
    Then I get the product

  Scenario: Multiplying by zero
    When I multiply zero by a number
    Then the product is zero

  Scenario: Multiplying by one
    When I multiply one by a number
    Then the product is that number
	
  Scenario: Multiply multiple numbers
    When I multiply multiple numbers
    Then I get the product of multiple numbers

