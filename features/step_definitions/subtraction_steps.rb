require 'calculator'

When /^I subtract two numbers$/ do
  @subtract = Calculator.new.subtract 23, 6
end

Then /^I get the result$/ do
  expect(@subtract).to eq 17
end

When /^I subtract zero from a number$/ do
  @subtract = Calculator.new.subtract 6, 0
end

Then /^the result is that number$/ do
  expect(@subtract).to eq 6
end

When /^I subtract the same numbers in different orders$/ do
  calc = Calculator.new
  @subtract1 = calc.subtract 6, 23
  @subtract2 = calc.subtract 23, 6
end

Then /^the results are different$/ do
  expect(@subtract1).to eq -17
  expect(@subtract2).to eq 17
end

When /^I subtract more than two numbers$/ do
  @subtract = Calculator.new.subtract 20, 2, 1, 0
end
