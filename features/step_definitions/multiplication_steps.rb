require 'Calculator'

When /^I multiply two numbers$/ do
  @product = Calculator.new.multiply 2, 5
end

Then /^I get an integer$/ do
  expect(@product).to eq 10
end

When /^I multiply numbers in different order$/ do
  calc = Calculator.new
  @product1 = calc.multiply 2, 5
  @product2 = calc.multiply 5, 2
end

Then /^the products are the same$/ do
  expect(@product1).to eq @product2
end

When /^I multiply an integer by one$/ do
  @product = Calculator.new.multiply 5, 1
end

Then /^the product should be the integer other than one$/ do
  expect(@product).to eq 5
end

When /^I multiply an integer by zero$/ do
  @product = Calculator.new.multiply 5, 0
end

Then /^the product should be zero$/ do
  expect(@product).to eq 0
end

When /^I multiply more than two numbers$/ do
  @product = Calculator.new.multiply 5, 2, 3, 6
end

Then /^I get the product$/ do
  expect(@product).to eq 180
end
