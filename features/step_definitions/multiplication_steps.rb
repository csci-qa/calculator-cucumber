require 'calculator'


When /^I multiply two numbers$/ do
	@multi = Calculator.new.multiplication 7, 2
end

Then /^the two numbers should result an integer$/ do
	expect(@multi).to eq 14
end

When /^I multiply integers$/ do
	calc = Calculator.new
	@multi1 = calc.multiplication 3, 4
	@multi2 = calc.multiplication 4, 3
end

Then /^the order of operation should not matter$/ do
	expect(@multi1).to eq @multi2
end

When /^I multiply an integer by one$/ do
	@multi = Calculator.new.multiplication 26, 1
end

Then /^I should have returned the first$/ do
	expect(@multi).to eq 26
end

When /^I multiply an number by zero$/ do
	@multi = Calculator.new.multiplication 88, 0
end

Then /^it result should return zero$/ do
	expect(@multi).to eq 0
end

When /^multiplying more than two numbers$/ do
	@multi = Calculator.new.multiplication 2, 3, 10
end

Then /^should return the result$/ do
	expect(@multi).to eq 60
end

