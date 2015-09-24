require 'calculator'

When /^I subtract two numbers$/ do
  @difference = Calculator.new.subtract 13,3
end

Then /^I get the difference$/ do
  expect(@difference).to eq 10
end

When /^I subtract the same numbers in different orders$/ do
  calc = Calculator.new
  @difference1 = calc.subtract 4,6
  @difference2 = calc.subtract 6,4
end

Then /^the difference is not the same$/ do
  expect(@difference1).not_to eq @difference2
end

When /^I subtract zero from a number$/ do
  @difference = Calculator.new.subtract 7,0
end

Then /^the difference is that number$/ do
  expect(@difference).to eq 7
end

When /^I subtract to identical numbers$/ do
  @difference = Calculator.new.subtract 5,5
end

Then /^the difference is zero$/ do
  expect(@difference).to eq 0
end

When /^I subtract more than two numbers$/ do
  @difference = Calculator.new.subtract 13,2,1
end
