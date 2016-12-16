require 'calculator'

When /^I multiply two numbers$/ do
  @product = Calculator.new.multiply 2, 3
end

Then /^I get the product$/ do
  expect(@product).to eq 6
end

When /^I multiply a number by zero$/ do
  @product = Calculator.new.multiply 10, 0
end

Then /^the product is zero$/ do
  expect(@product).to eq 0
end

When /^I multiply a number by one$/ do
  @product = Calculator.new.multiply 10, 1
end

Then /^the product equals the non-one number$/ do
  expect(@product).to eq 10
end

When /^I multiply the same numbers in different orders$/ do
  calc = Calculator.new
  @product1 = calc.multiply 3, 2
  @product2 = calc.multiply 2, 3
end

Then /^the products are equal$/ do
  expect(@product1).to eq @product2
end

When /^I multiply more than two numbers$/ do
  @product = Calculator.new.multiply 4, 6, 2
end

Then /^the product is each of them multiplied by each other$/ do
  expect(@product).to eq 48
end