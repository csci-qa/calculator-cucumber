require 'calculator'

When /^I subract two numbers$/ do
  calc = Calculator.new
  @diff = calc.subtract(6, 2)
end

Then /^I get the total$/ do
  expect(@diff).to eq 4
end

