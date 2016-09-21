require 'calculator'

When /^I multiply two numbers$/ do
  @product = Calculator.new.multiple 10, 6
end

Then /^I get the product$/ do
  expect(@product).to eq 60
end

When /^I multiply a number by zero$/ do
  @product = Calculator.new.multiple 10, 0
end 

Then /^the product equals zero$/ do
  expect(@product).to eq 0
end

When /^I multiply the same numbers in different order$/ do 
  calc = Calculator.new
  @product1 = calc.multiple 10, 6
  @product2 = calc.multiple 6, 10  
end

Then /^the products are the same$/ do
  expect(@product1).to eq @product2
end