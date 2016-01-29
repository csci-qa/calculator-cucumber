require 'calculator'

When(/^I subtract two numbers$/) do
  @difference = Calculator.new.sub 12, 7
end

Then(/^I want the difference$/) do
  expect(@difference).to eq 5
end

When(/^I subtract those numbers inversed$/) do
  @difference = Calculator.new.sub 7, 12
end

Then(/^I want the negative difference$/) do
  expect(@difference).to eq -5
end

When(/^I subtract zero$/) do
  @difference = Calculator.new.sub 7, 0
end

Then(/^I get the same number$/) do
  expect(@difference).to eq 7
end
