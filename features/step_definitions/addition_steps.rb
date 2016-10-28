require 'calculator'

When /^I add two numbers$/ do
  @value = Calculator.new.sum 6, 23
end

Then /^I get their value$/ do
  expect(@value).to eq 29
end

When /^I add zero to a number$/ do
  @value = Calculator.new.sum 6, 0
end

Then /^the value is that number$/ do
  expect(@value).to eq 6
end

When /^I add the same numbers in different orders$/ do
  @value1 = Calculator.new.sum 6
  @value2 = Calculator.new.sum @value1
end

Then /^the values are the same$/ do
  expect(@value1).to eq @value2
end

When /^I add more than two numbers$/ do
  @value = Calculator.new.sum 15, 6, 9, 0
end

Then /^I get the value of multiple numbers$/ do
	expect(@value).to eq 30
end	