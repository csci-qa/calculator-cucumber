require 'calculator'

When /^I subtract two numbers$/ do
  @difference = Calculator.new.subtract 6, 23
end

Then /^I get the difference$/ do
  expect(@difference).to eq -17
end

When /^I subtract zero from a number$/ do
  @difference = Calculator.new.subtract 6, 0
end

Then /^the difference is that number$/ do
  expect(@difference).to eq 6
end

When /^I subtract two different numbers in different orders$/ do
  calc = Calculator.new
  @diff1 = calc.subtract 6, 23
  @diff2 = calc.subtract 23, 6
end

Then /^the difference are not the same$/ do
  expect(@diff1).not_to eq @diff2
end

When /^I subtract the same numbers in different orders$/ do
  calc = Calculator.new
  @diff1 = calc.subtract 6, 6
  @diff2 = calc.subtract 6, 6
end

Then /^the differences are the same$/ do
  expect(@diff1).to eq @diff2
end
	
When /^I subtract multiple numbers$/ do
  @difference = Calculator.new.subtract 15, 6, 8, 0
end

Then /^I get the difference of multiple numbers$/ do
  expect(@difference).to eq 1
end
	
When /^I subtract a number from itself$/ do
  @difference = Calculator.new.subtract 15, 15
end

Then /^the difference is zero$/ do
  expect(@difference).to eq 0
end