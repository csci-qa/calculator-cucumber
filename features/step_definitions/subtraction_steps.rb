require 'calculator'

When /^I subtract two numbers$/ do
  @difference = Calculator.new.subtract 23, 6
end

Then /^I get the difference/ do
  expect(@difference).to eq 17
end

When /^I subtract zero from a number$/ do
  @difference = Calculator.new.subtract 6, 0
end

Then /^the difference is that number$/ do
  expect(@difference).to eq 6
end

When /^I subtract the same numbers in different orders$/ do
  calc = Calculator.new
  @difference1 = calc.subtract 6, 23
  @difference2 = calc.subtract 23, 6
end

Then /^the differences are not the same/ do
  expect(@difference1).not_to eq @difference2
end

