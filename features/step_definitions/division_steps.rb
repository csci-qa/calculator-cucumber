require 'calculator'

When /^I divide one number by another number$/ do
  @quotient = Calculator.new.divide 25, 5
end

Then /^I get the quotient$/ do
  expect(@quotient).to eq 5
end

When /^I divide by the same numbers in different orders$/ do
  calc = Calculator.new
  @quotient1 = calc.divide 5.0, 25
  @quotient2 = calc.divide 25, 5
end

Then /^the quotients are not the same$/ do
  expect(@quotient1).not_to eq @quotient2
end

When /^I divide a number by zero$/ do
  @quotient = Calculator.new.divide 6, 0
end

Then /^I get an ZeroDivisionError, so it equals 0$/ do
  expect(@quotient).to eq 0
  0
end

