 require 'calculator'

When /^I subtract two numbers$/ do
   @diff = Calculator.new.subtract 8, 2
 end

Then /^I get the difference$/ do
   expect(@diff).to eq 6
 end
 
When /^I subtract the same numbers in different orders$/ do
   calc = Calculator.new
   @diff1 = Calculator.new.subtract 8, 4
   @diff2 = Calculator.new.subtract 4, 8
 end

Then /^the differences are not the same$/ do
   expect(@diff1).not_to eq @diff2
 end

When /^I subtract zero from a number$/ do
   @diff1 = Calculator.new.subtract 62, 0
 end

Then /^the difference is the first integer$/ do
	expect(@diff1).to eq 62
 end
 
 When /^I subtract an integer from itself$/ do
	@diff = Calculator.new.subtract 9,9
 end

Then /^the difference is zero$/ do
	expect(@diff).to eq 0
 end
 
When /^I subtract more than two numbers$/ do
	@diff = Calculator.new.subtract 10,5,2
 end

Then /^I get the total$/ do
	expect(@diff).to eq 3
 end