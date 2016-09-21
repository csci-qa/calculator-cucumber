require 'calculator'

When /^I multiply two numbers$/ do
	@product = Calculator.new.multiply 20, 6
end

Then /^I get the product$/ do
  expect(@product).to eq 120
end

When /^I multiply zero with a number$/ do
  @product = Calculator.new.multiply 6, 0
end

Then /^the product is zero$/ do
  expect(@product).to eq 0
end

When /^I multiply a number by one$/ do
  @product = Calculator.new.multiply 6, 1
end

Then /^the product is itself$/ do
  expect(@product).to eq 6
end

When /^I multiply the same numbers in different orders$/ do
  calc = Calculator.new
  @difference1 = calc.multiply 6, 20
  @difference2 = calc.multiply 20, 6
end

Then /^the products are the same$/ do
  expect(@product1).to eq @product2
end

When /^I multiply more than two numbers$/ do
  @product = Calculator.new.multiply 20, 6, 1
end

Then /^I get the total product$/ do
  expect(@product).to eq 120
end