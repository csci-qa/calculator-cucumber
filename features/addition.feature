Feature: Addition
  As a mathematician
  I want my calculator to add numbers
  So I can know their sum

  Scenario: Adding numbers to get a sum
    When I add two numbers
    Then I get the sum

  Scenario: Adding zero
    When I add zero to a number
    Then the sum is that number

  Scenario: Adding numbers in different orders
    When I add the same numbers in different orders
    Then the sums are the same

  Scenario: Adding more than two numbers
    When I add more than two numbers
    Then I get the sum
	

  Scenario: Subtracting numbers to get the difference
    When I subtract two numbers
	Then I get the difference

  Scenario: Subtracting numbers in different orders
    When I subtract the same numbers in different orders
	Then the difference is not the same

  Scenario: Subtracting zero
    When I subtract zero from a number
	Then the difference is that number

  Scenario: Subtracting two identical numbers
    When I subtract to identical numbers
	Then the difference is zero

  Scenario: Subtracting more than two numbers
    When I subtract more than two numbers
	Then I get the difference


  Scenario: Multiplying numbers to get the product
    When I multiply two numbers
	Then I get the product

  Scenario: Multiplying numbers in different orders
    When I multiply the same numbers in different orders
	Then the product is the same

  Scenario: Multiplying by one
    When I multiply a number by one
	Then the product should be the first number

  Scenario: Multiplying by zero
    When I multiply a number by zero
	Then the product should be zero

  Scenario: Multiplying more than two numbers
    When I multiply more than two numbers
	Then I get the product


  Scenario: Dividing numbers to get the quotient
    When I divide two numbers
	Then I get the quotient

  Scenario: Dividing numbers in different orders
    When I divide the same numbers in different orders
	Then the quotient is different

  Scenario: Dividing by one
    When I divide by one
	Then the quotient should be the first number

  Scenario: Dividing zero by another number
    When I divide zero by another number
	Then the quotient should be zero

  Scenario: Dividing by zero
    When I divide by zero
	Then an error should be raised

  Scenario: Dividing by more than two numbers
    When I divide by more than two numbers
	Then I get the quotient