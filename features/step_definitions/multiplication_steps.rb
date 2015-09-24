require 'calculator'

When /^I multiply two numbers$/ do
  @product = Calculator.new.multiply 6,2
end

Then /^I get the product$/ do
  expect(@product).to eq 12
end

When /^I multiply the same numbers in different orders$/ do
  calc = Calculator.new
  @product1 = calc.multiply 3,7
  @product2 = calc.multiply 7,3
end

Then /^the product is the same$/ do
  expect(@product1).to eq @product2
end

When /^I multiply a number by one$/ do
  @product = Calculator.new.multiply 5,1
end

Then /^the product should be the first number$/ do
  expect(@product).to eq 5
end

When /^I multiply a number by zero$/ do
  @product = Calculator.new.multiply 8,0
end

Then /^the product should be zero$/ do
  expect(@product).to eq 0
end

When /^I multiply more than two numbers$/ do
  @product = Calculator.new.multiply 3,2,2
end
