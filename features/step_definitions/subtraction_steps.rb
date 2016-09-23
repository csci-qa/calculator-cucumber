require 'calculator'

When /^I subtract two numbers$/ do
  @difference = Calculator.new.subtract 9, 5
end

Then /^I get the difference$/ do
  expect(@difference).to eq 4
end

When /^I subtract zero from a number$/ do
  @difference = Calculator.new.subtract 9, 0
end

Then /^the difference is that number$/ do
  expect(@difference).to eq 9
end

When /^I subtract the same numbers in different orders$/ do
  calc = Calculator.new
  @difference1 = calc.subtract 9, 5
  @difference2 = calc.subtract 5, 9
end

Then /^the differences are different$/ do
  expect(@difference1).to eq 4 and
  expect(@difference2).to eq -4
end

When /^I subtract a number from the same number$/ do
  @difference = Calculator.new.subtract 9, 9
end

Then /^the difference is zero$/ do
  expect(@difference).to eq 0
end
