require 'calculator'

When(/^I multiply numbers$/) do
  @prod = Calculator.new.mult 5,5
end

Then(/^I get a product$/) do
  expect(@prod).to eq 25
end

When(/^I multiply numbers in different orders$/) do
  calc = Calculator.new
  @prod1 = calc.mult 10,2
  @prod2 = calc.mult 2,10
end

Then(/^the products are the same$/) do
  expect(@prod2).to eq @prod1
end

When(/^I multiply a number by one$/) do
  @prod = Calculator.new.mult 10,1
end

Then(/^the product is the first number$/) do
  expect(@prod).to eq 10
end

When(/^I multiply a number by zero$/) do
  @prod = Calculator.new.mult 5,0
end

Then(/^the product is zero$/) do
  expect(@prod).to eq 0
end