require 'calculator'

When /^I multiply two numbers$/ do
  @product = Calculator.new.multiply 6, 3
end

Then /^I get the product$/ do
  expect(@product).to eq 18
end

When /^I multiply zero to a number$/ do
  @product = Calculator.new.multiply 6, 0
end

Then /^the product is zero$/ do
  expect(@product).to eq 0
end

When /^I multiply the same numbers in different orders$/ do
  calc = Calculator.new
  @product1 = calc.multiply 6, 3
  @product2 = calc.multiply 3, 6
end

Then /^the products are the same$/ do
  expect(@product1).to eq @product2
end

When /^I multiply more than two numbers$/ do
  @product = Calculator.new.multiply 3, 2, 3, 1
end
