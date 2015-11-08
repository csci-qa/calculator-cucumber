require 'calculator'

When /^I multiply two integers$/ do
	@prod = Calculator.new.multiply 2, 2
end

Then /^the product is an integer$/ do
	expect(@prod).to be_a Integer
end

When /^I multiply the same numbers in different orders$/ do
	@prod1 = Calculator.new.multiply 2, 3
	@prod2 = Calculator.new.multiply 3, 2
end

Then /^the pruducts are the same$/ do
	expect(@prod1).to eq @prod2
end

When /^I multiply a number by one$/ do
	@prod = Calculator.new.multiply 2, 1
end

Then /^the pruduct is the number$/ do
	expect(@prod).to eq 2
end

When /^I multiply a number by zero$/ do
	@prod = Calculator.new.multiply 2, 0
end

Then /^the pruduct is zero$/ do
	expect(@prod).to eq 0
end

When /^I multiply more than two numbers$/ do
	@prod = Calculator.new.multiply 2, 3, 4, 5
end

Then /^I get the pruduct$/ do
	expect(@prod).to eq 120
end