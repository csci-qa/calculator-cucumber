require 'calculator'

When /^I subtract two numbers$/ do
	@difference = Calculator.new.subtract 20, 6
end

Then /^I get the difference$/ do
  expect(@difference).to eq 14
end

When /^I subtract zero from a number$/ do
  @difference = Calculator.new.subtract 6, 0
end

Then /^the difference is that number$/ do
  expect(@difference).to eq 6
end

When /^I subtract the number from itself$/ do
  @difference = Calculator.new.subtract 6, 6
end

Then /^the difference is zero$/ do
  expect(@difference).to eq 0
end

When /^I subtract the same numbers in different orders$/ do
  calc = Calculator.new
  @difference1 = calc.subtract 6, 23
  @difference2 = calc.subtract 23, 6
end

Then /^the differences are different$/ do
  expect(@difference1).to eq -17
  expect(@difference2).to eq 17
end

When /^I subtract more than two numbers$/ do
  @difference = Calculator.new.subtract 18, 3, 1, 0
end

Then /^I get the total difference$/ do
  expect(@difference).to eq 14
end