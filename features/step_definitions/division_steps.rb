require 'calculator'

When /^I divide two numbers$/ do
  @quotient = Calculator.new.divide 10, 2
end

Then /^I get the quotient$/ do
  expect(@quotient).to eq 5
end

When /^I divide the same numbers in different orders$/ do
  calc = Calculator.new
  @quotient1 = calc.divide 9, 30
  @quotient2 = calc.divide 30, 9
end

Then /^the quotients are different$/ do
  expect(@quotient1).not_to eq @quotient2
end

When /^I divide a number by one$/ do
  @quotient = Calculator.new.divide 10, 1
end

Then /^the quotient is that number$/ do
  expect(@quotient).to eq 10
end

When /^I divide zero by a number$/ do
  @quotient = Calculator.new.divide 0, 35
end

Then /^the quotient is zero$/ do
  expect(@quotient).to eq 0
end

