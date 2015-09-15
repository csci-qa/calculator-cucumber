require 'calculator'

When /^I subtract two numbers$/ do
  @difference = Calculator.new.subtract 10, 5
end

Then /^I get the difference$/ do
  expect(@difference).to eq 5
end
