require 'calculator'

When /^I divide an number by its least common denominator$/ do
	@quotient = Calculator.new.divide 30, 6
end

Then /^the quotient is an integer$/ do
	expect(@quotient).to be_a Integer
end

When /^I divide the same numbers in different orders$/ do
	@quotient = Calculator.new.divide 5, 6
	@quotient = Calculator.new.divide 6, 5
end

Then /^the quotients are different$/ do
	expect(@quotient).not_to eq @quotient2
end

When /^I divide number by one$/ do
	@quotient = Calculator.new.divide 7, 1
end

Then /^I get that number$/ do
	expect(@quotient).to eq 7
end

When /^I divide zero by a number$/ do
	@quotient = Calculator.new.divide 0, 7
end

Then /^I get zero$/ do
	expect(@quotient).to eq 0
end

When /^I divide a number by zero$/ do
	@quotient = Calculator.new
end

Then /^I get an error$/ do
	expect{@quotient.divide(7, 0)}.to raise_error(ZeroDivisionError)
end

When /^I divide more than two numbers$/ do
	@quotient = Calculator.new.divide 256, 32, 8 
end

Then /^I get the quotient$/ do
	expect(@quotient).to eq 1
end 
