require 'calculator'

When /^I multiply two numbers$/ do
  @product = Calculator.new.multiply 5, 10
end

Then /^I get the product$/ do
  expect(@product).to eq 50
end

