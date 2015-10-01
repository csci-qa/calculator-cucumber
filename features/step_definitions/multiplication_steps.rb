 require 'calculator'

When /^I multiply two numbers$/ do 
   @prod = Calculator.new.multiply 2, 3
 end

Then /^I get the product$/ do
 	expect(@prod).to eq 6
 end
  
When /^I multiply numbers in a different order$/ do
	calc = Calculator.new
	@prod1 = calc.multiply 6,5
	@prod2 = calc.multiply 5,6
 end

Then /^the product is the same$/ do
	expect(@prod1).to eq @prod2
 end
 
When /^I multiply a number by one$/ do
	@prod = Calculator.new.multiply 16,1
 end

Then /^the product is the first number$/ do
	expect(@prod).to eq 16
 end
 
When /^I multiply a number by zero$/ do
	@prod = Calculator.new.multiply 9, 0
 end

Then /^the product is zero$/ do
	expect(@prod).to eq 0
 end

When /^I multiply more than two numbers$/ do
	@prod = Calculator.new.multiply 5,4,3
 end

Then /^I get the total product$/ do
	expect(@prod).to eq 60
 end