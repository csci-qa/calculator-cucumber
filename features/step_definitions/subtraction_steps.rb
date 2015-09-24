require "Calculator"

When /^I subtract two numbers$/ do
  @result = Calculator.new.subtract 35, 6
end

Then /^I get the correct difference$/ do
  expect(@result).to eq 29
end

When /^I subtract numbers in different orders$/ do
   @result1 = Calculator.new.subtract 6, 1
   @result2 = Calculator.new.subtract 1, 6
end

Then /^the differences are different$/ do
  expect(@result1).not_to eq @result2
end

When /^I subtract zero from a number$/ do
  @result = Calculator.new.subtract 6, 0
end

Then /^the difference is that number$/ do
  expect(@result).to eq 6
end

When /^I subtract an integer from itself$/ do
  @result = Calculator.new.subtract 6, 6
end

Then /^I get zero$/ do
  expect(@result).to eq 0
end

When /^I subtract more than two numbers$/ do
  @result = Calculator.new.subtract 160, 60, 20, 40, 11
 end