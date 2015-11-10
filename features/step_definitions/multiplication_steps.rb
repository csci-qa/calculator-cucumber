require 'calculator'

When /^I multiply two numbers$/ do
  @product = Calculator.new.multiply 2, 4
end

Then /^I get the product$/ do
  expect(@product).to eq 8
end

When /^I multiply zero by a number$/ do
  @product = Calculator.new.multiply 6, 0
end

Then /^the product is zero$/ do
  expect(@product).to eq 0
end

When /^I multiply one by a number$/ do
  @product = Calculator.new.multiply 6, 1
end

Then /^the product is that number$/ do
  expect(@product).to eq 6
end
	
When /^I multiply multiple numbers$/ do
  @product = Calculator.new.multiply 2, 4, 1
end

Then /^I get the product of multiple numbers$/ do
  expect(@product).to eq 8
end
	
