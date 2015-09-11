require 'calculator'

When /^I divide two numbers$/ do
  @quotient = Calculator.new.divide 10, 2
end

Then /^I get the quotient$/ do
  expect(@quotient).to eq 5
end

