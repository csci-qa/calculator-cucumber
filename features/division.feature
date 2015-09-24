Feature: Division
 As a mathematician
 I want my calculator to work and divide numbers
 So I don't have to, becuase mental division is hard

   Scenario: Dividing numbers to get a poduct
   	When I divide two numbers
   	Then I get the quotient

   Scenario: Dividing by zero
   	When I divide a number by zero
   	Then I receive an error

   Scenario: Dividing zero by a number
   	When I divide zero by a number
   	Then the quotient is zero

   Scenario: Divide a number by one
   	When I divide a number by one
   	Then the quotient is the first number

   Scenario: Dividing numbers in different orders
   	When I divide numbers in different orders
   	Then the quotient is not the same

   Scenario: Dividing more than two numbers
   	When I divide more than two numbers
   	Then I get the final quotient
