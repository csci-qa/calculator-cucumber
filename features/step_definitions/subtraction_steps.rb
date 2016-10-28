require 'calculator'

When /^I subtract two numbers$/ do
	@value = Calculator.new.subtract 10, 3
end

Then /^I get the value$/ do
	expect(@value).to eq 7
end

When /^I subtract the same numbers in different orders$/ do
		calc = Calculator.new
		@value1 = calc.subtract 10, 5
		@value2 = calc.subtract 5, 10
end

Then /^my value can be negative$/ do
	expect(@value1).to eq 5
	expect(@value2).to eq -5
end

When /^I subtract by zero$/ do
	@value = Calculator.new.subtract 10,0
end
	
Then /^my numerator stays the same$/ do
	expect(@value).to eq 10
end
When /^I subtract zero by a number$/ do
	@value = Calculator.new.subtract 0, 10
end
Then /^my second number stays the same$/ do
	expect(@value).to eq -10
end