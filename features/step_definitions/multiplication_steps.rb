require 'calculator'

When /^I multiply two numbers$/ do
  @product = Calculator.new.multiply 5, 10
end

Then /^I get the product$/ do
  expect(@product).to eq 50
end

When /^I multiply the same numbers in different orders$/ do
  calc = Calculator.new
  @product1 = calc.multiply 6, 7
  @product2 = calc.multiply 7, 6
end

Then /^the products are the same$/ do
  expect(@product1).to eq @product2
end

