require 'calculator'

When(/^I multiply two numbers$/) do
  @product = Calculator.new.mult 3, 4
end

Then(/^get the product$/) do
  expect(@product).to eq 12
end

When(/^I multiply those numbers inversed$/) do
  @product = Calculator.new.mult 4, 3
end

Then(/^get the same product$/) do
  expect(@product).to eq 12
end

When(/^I multiply by zero$/) do
  @product = Calculator.new.mult 4, 0
end

Then(/^get zero as the product$/) do
  expect(@product).to eq 0
end