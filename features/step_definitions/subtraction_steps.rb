require 'calculator'

When /^I subtract two numbers$/ do
  @sum = Calculator.new.subtract 20, 9
end

Then /^I get the difference$/ do
  expect(@sum).to eq 11
end

