require 'calculator'

When /^I subtract two numbers$/ do
  @difference = Calculator.new.subtract 10, 5
end

Then /^I get the difference$/ do
  expect(@difference).to eq 5
end

When /^I subtract the same numbers in different order$/ do
  calc = Calculator.new
  @difference1 = calc.subtract 10, 5
  @difference2 = calc.subtract 5, 10
end

Then /^the differences are not the same$/ do
  expect(@difference1).to_not eq @difference2
end
