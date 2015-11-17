require 'calculator'

When /^I multiply two integers$/ do
	@prod = Calculator.new.multiply 2, 2
end

Then /^the product is an integer$/ do
	expect(@prod).to be_a Integer
end

When /^I multiply the same numbers in different orders$/ do
	@prod1 = Calculator.new.multiply 5, 6
	@prod2 = Calculator.new.multiply 6, 5
end

Then /^the pruducts are the same$/ do
	expect(@prod1).to eq @prod2
end

When /^I multiply a number by one$/ do
	@prod = Calculator.new.multiply 7, 1
end

Then /^the pruduct is the number$/ do
	expect(@prod).to eq 7
end

When /^I multiply more than two numbers$/ do
	@prod = Calculator.new.multiply 1, 2, 3, 4
end

Then /^I get the pruduct$/ do
	expect(@prod).to eq 24
end 

When /^I multiply a number by zero$/ do
	@prod = Calculator.new.multiply 7, 0
end

Then /^the pruduct is zero$/ do
	expect(@prod).to eq 0
end