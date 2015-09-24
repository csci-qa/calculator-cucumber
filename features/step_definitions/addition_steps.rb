require "Calculator"

When /^I add two numbers together$/ do
  @result = Calculator.new.add 6, 23
end

Then /^I get the correct sum$/ do
  expect(@result).to eq 29
end

When /^I add numbers in different orders$/ do
   @result1 = Calculator.new.add 6, 1
   @result2 = Calculator.new.add 1, 6
end

Then /^the sums are the same$/ do
  expect(@result1).to eq @result2
end

When /^I add zero to a number$/ do
  @result = Calculator.new.add 6, 0
end

Then /^the sum is that number$/ do
  expect(@result).to eq 6
end

When /^I add more than two numbers$/ do
  @result = Calculator.new.add 6, 20, 2, 1
 end