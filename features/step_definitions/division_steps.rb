require 'calculator'

When /^I divide an number by its least common denominator$/ do
	@quotient = Calculator.new.divide 24, 6
end

Then /^the quotient is an integer$/ do
	expect(@quotient).to be_a Integer
end

When /^I divide the same numbers in different orders$/ do
	@quotient = Calculator.new.divide 2, 3
	@quotient = Calculator.new.divide 3, 2
end

Then /^the quotients are different$/ do
	expect(@quotient).not_to eq @quotient2
end

When /^I divide number by one$/ do
	@quotient = Calculator.new.divide 2, 1
end

Then /^I get that number$/ do
	expect(@quotient).to eq 2
end

When /^I divide zero by a number$/ do
	@quotient = Calculator.new.divide 0, 1
end

Then /^I get zero$/ do
	expect(@quotient).to eq 0
end

When /^I divide a number by zero$/ do
	@quotient = Calculator.new
end

Then /^I get an error$/ do
	expect{@quotient.divide(1, 0)}.to raise_error(ZeroDivisionError)
end

When /^I divide more than two numbers$/ do
	@quotient = Calculator.new.divide 256, 16, 4, 2
end

Then /^I get the quotient$/ do
	expect(@quotient)
end