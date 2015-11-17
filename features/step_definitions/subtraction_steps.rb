When /^I subtract two numbers$/ do
	@result = Calculator.new.sub 10, 5
end

Then /^I get the result$/ do
	expect(@result).to eq 5
end

When /^I subtract zero from a number$/ do
	@result = Calculator.new.sub 10, 0
end

Then /^the result is that number$/ do
	expect(@result).to eq 10
end

When /^I subtract the same numbers in different orders$/ do
	@result1 = Calculator.new.sub 5, 10
	@result2 = Calculator.new.sub 10, 5
end

Then /^I get a different result$/ do
	expect(@result1).to eq -5
	expect(@result2).to eq 5
end

When /^I subtract more than two numbers$/ do
	@result = Calculator.new.sub 10, 2, 1
end

Then /^I get a result$/ do
	expect(@result).to eq 7
end
