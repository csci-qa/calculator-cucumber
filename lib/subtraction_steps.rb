require 'calculator'

When /^I subtract two number$/ do
	@value = calculator.new.subtract 10, 5
end

Then /^I get the value$/ do
		expect(@value).to eq 5
	end

When /^I subtract the same numbers in different orders$/ do
		calc = Calculator.new
		@value1 = calc.subtract 10, 5
		@value2 = calc.subtract 5, 10
	end

Then /^the values are different$/ do
	expect(@value1).to eq 5
	expect(@value2).to eq -5
	end

When /^I subtract a number by zero$/ do
	@quotient = Calculator.new.subtract 10,0
	end
	
Then /^My numerator stays the same$/ do
	expect(@value).to eq 10
	end
When /^I subtract zero from a number$/ do
	@value = Calculator.new.subtract 0, 10
	end
Then /^My denominator doesnt change$/ do
	expect(@value).to eq 10
	end