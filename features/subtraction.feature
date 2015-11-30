Feature: Subtraction
  As a mathematician
  I want my calculator to subtract numbers
  So I can know their difference

  Scenario: Subtracting numbers to get a difference
    When I subtract two numbers
    Then I get the difference

  Scenario: Subtracting zero
    When I subtract zero from a number
    Then the difference is that number

  Scenario: Subtracting two different numbers
    When I subtract two different numbers in different orders
    Then the differences are not the same

  Scenario: Subtracting two equal numbers
    When I subtract the same numbers in different orders
    Then the differences are the same
	
  Scenario: Subtract multiple numbers
    When I subtract multiple numbers
    Then I get the difference of multiple numbers

  Scenario: Subtracting a number from itself
    When I subtract a number from itself
	Then the difference is zero