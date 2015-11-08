require 'calculator'

When /^I subtract two integers$/ do
	@difference = Calculator.new.subtract 3, 2
end

Then /^the difference is an integer$/ do
	expect(@difference).to equal 1
end

When /^I subtract the same numbers in different orders$/ do
	@difference1 = Calculator.new.subtract 3, 2
	@difference2 = Calculator.new.subtract 2, 3
end

Then /^the differences are different$/ do
	expect(@difference1).not_to eq @difference2
end

When /^I subtract zero from a number$/ do
	@difference = Calculator.new.subtract 3, 0
end

Then /^the difference is that number$/ do
	expect(@difference).to eq 3
end

When /^I subtrac a number from itself$/ do
	@difference = Calculator.new.subtract 3, 3
end

Then /^the difference is zero$/ do
	expect(@difference).to eq 0
end

When /^I subtract more than two numbers$/ do
	@difference = Calculator.new.subtract 7, 3, 2, 1
end

Then /^I get the difference$/ do
	expect(@difference).to eq 1
end