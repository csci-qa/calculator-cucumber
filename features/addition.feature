Feature: Addition
  As a mathematician
  I want my calculator to add numbers
  So I can know their sum

  Scenario: Adding numbers to get a sum
    When I add two numbers together
    Then I get an integer
    Then I get the correct sum

  Scenario: Add numbers in different orders
    When I add numbers in different orders
    Then the sums are the same

   Scenario: Adding zero
     When I add zero to a number
     Then the sum is that number

    Scenario: Adding more than two numbers
      When I add more than two numbers
      Then I get the correct sum