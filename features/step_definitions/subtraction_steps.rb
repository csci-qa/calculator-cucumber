require 'Calculator'

When /^I enter two numbers$/ do
  @subtraction = Calculator.new.subtract 20, 10
end

Then /^I get the result as an integer$/ do
  expect(@subtraction).to eq 10
end

When /^I subtract two numbers$/ do
	calc = Calculator.new
	@subtraction1 = calc.subtract 5, 30
	@subtraction2 = calc.subtract 30, 5
end

Then /^the order of operation should matter$/ do
 	expect(@subtraction1).should_not eq @subtraction2
end

	
When /^I subtract zero from an integer$/ do
  @subtraction = Calculator.new.subtract 10, 0
end

Then /^the first number should be returned$/ do
  expect(@subtraction).to eq 10
end

When /^I subtract an integer from itself$/ do
	@subtraction = Calculator.new.subtract 25, 25
end

Then /^the result should return zero$/ do
	expect(@subtraction).to eq 0
end

When /^I subtract more than 2 numbers$/ do
	@subtraction = Calculator.new.subtract 90, 70, 10, 5
end

Then /^I should get the result$/ do
	expect(@subtraction).to eq 5
end