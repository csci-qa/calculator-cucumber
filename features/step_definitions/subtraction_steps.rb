require 'calculator'

When(/^i subtract two numbers$/) do
  @difference = Calculator.new.subtract 20,10
end

Then(/^i get a difference$/) do
  expect(@difference).to eq 10
end

When(/^I subtract zero from a number$/) do
  @difference = Calculator.new.subtract 5,0
end

Then(/^the difference is that number$/) do
  expect(@difference).to eq 5
end

When(/^I subtract the same numbers in different orders$/) do
  calc = Calculator.new
  @difference1 = calc.subtract 10,6
  @difference2 = calc.subtract 6,10
end

Then(/^the differences are not the same$/) do
  expect(@difference1).not_to eq @difference2
end