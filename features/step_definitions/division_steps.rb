require 'calculator'

When /^I divide by two interger$/ do
	@div = Calculator.new.division 10, 2
end

Then /^the result is returned$/ do
	expect(@div).to eq 5
end

When /^I divide numbers$/ do
	calc = Calculator.new
	@div1 = calc.division 10, 2
	@div2 = calc.division 2, 10
end

Then /^the order should matter and return the right result$/ do
	expect(@div1).should_not eq @div2
end

When /^I divide an integer by one$/ do
	@div = Calculator.new.division 10, 1
end

Then /^I should return the first integer$/ do
	expect(@div).to eq 10
end

When /^I divide and integer by zero$/ do
	@div = Calculator.new.division 0, 10
end

Then /^I should be returned zero$/ do
	expect(@div).to eq 0
end

When /^I divide zero by an integer$/ do
	begin
		@div = Calculator.new.division 10, 0
	rescue Exception => e
		@result = e
	end
end

Then /^an error should be returned$/ do
	expect(@result).to be_a(ZeroDivisionError) 
end


When /^dividing more than two numbers$/ do
	@div = Calculator.new.division 60, 2, 5
end

Then /^should return the result for more than two numbers$/ do
	expect(@div).to eq 6
end

