require 'Calculator'

When /^I multiply two numbers$/ do
  @product = Calculator.new.multiply 2, 5
end

Then /^I get an integer$/ do
  expect(@product).to eq 10
end

