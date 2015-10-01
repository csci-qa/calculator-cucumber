require 'calculator'

When /^I multiply two numbers$/ do
	@multi = Calculator.new.multiplication 8, 2
end

Then /^the two numbers should result an integer$/ do
	expect(@multi).to eq 16
end

When /^I multiply two integers$/ do
	calc = Calculator.new
  	@multi1 = calc.multiplication 6, 3
    @multi2 = calc.multiplication 3, 6
end

Then /^the order of operation should not matter$/ do
	expect(@multi1).to eq @multi2
end

When /^I multiply an integer by one$/ do
	@multi = Calculator.new.multiplication 18, 1
end

Then /^it should return the first integer$/ do
	expect(@multi).to eq 18
end

When /^I multiply an integer by zero$/ do
	@multi = Calculator.new.multiplication 12, 0
end

Then /^it should return zero$/ do
	expect(@multi).to eq 0
end

When /^I multiply more than 2 numbers at a time$/ do
	@multi = Calculator.new.multiplication 3, 2, 4
end

Then /^it should return the correct result$/ do
	expect(@multi).to eq 24
end

