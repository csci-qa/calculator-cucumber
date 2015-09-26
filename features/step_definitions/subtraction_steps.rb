require 'calculator'

When /^I enter two number$/ do
 	@subtract = Calculator.new.subtraction 20, 10
end

Then /^it should return an integer$/ do
	expect(@subtract).to eq 10
end

When /^I subtract two numbers$/ do
	calc = Calculator.new
  	@subtract1 = calc.subtraction 10, 25
  	@subtract2 = calc.subtraction 25, 10
 end

 Then /^the order of operation should matter$/ do 
 	expect(@subtract1).should_not eq @subtract2
 end


When /^subtracting zero from an integer$/ do
	@subtract = Calculator.new.subtraction 10, 0
end

Then /^the first number should be returned$/ do
	expect(@subtract).to eq 10
end

When /^I subtract the same number from a number$/ do
	@subtract = Calculator.new.subtraction 10, 10
end

Then /^it should return zero$/ do
	expect(@subtract).to eq 0
end


When /^I subtract more than two numbers$/ do
	@subtract = Calculator.new.subtraction 50, 20, 5
end


Then /^the result should be returned$/ do
	expect(@subtract).to eq 25
end

