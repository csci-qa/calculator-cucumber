require 'calculator'

When /^I multiply two numbers$/ do
  @product = Calculator.new.multiply 3, 7
end

Then /^I get their product$/ do
  expect(@product).to eq 21
end

When /^I multiply by zero$/ do
  @product = Calculator.new.multiply 2, 0
end

Then /^the product is also zero$/ do
  expect(@product).to eq 0
end

When /^I multiply a number by one$/ do
	@product = Calculator.new.multiply 5, 1
end

Then /^the products are the same$/ do
  expect(@product1).to eq @product2
end

When /^I multiply the same numbers in different orders$/ do
  calc = Calculator.new
  @product1 = calc.multiply 6, 4
  @product2 = calc.multiply 4, 6
end

Then /^the higher number becomes the product$/ do
  expect(@product1).to eq @product2
end