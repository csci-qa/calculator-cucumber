When /^I divide two numbers$/ do
	@quotient = Calculator.new.div 10, 2
end

Then /^I get the quotient$/ do
	expect(@quotient).to eq 5
end

When /^I divide by one$/ do
	@quotient = Calculator.new.div 10, 1
end

Then /^I get the non one integer$/ do
	expect(@quotient).to eq 10
end

When /^I divide more than two numbers$/ do
	@quotient = Calculator.new.div 20, 2, 2
end

Then /^I get an answer in order$/ do
	expect(@quotient).to eq 5
end

When /^I divide by zero$/ do
	@quotient = Calculator.new.div 4,0
end

Then /^I get an error$/ do
	expect(@quotient).to be_a ZeroDivisionError
		
end






















