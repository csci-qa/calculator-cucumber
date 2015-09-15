require 'Calculator'

When /^I divide two numbers$/ do
  @quotient = Calculator.new.divide 10, 2
end

Then /^I get the quotient$/ do
  expect(@quotient).to eq 5
end

When /^I divide the same numbers in different orders$/ do
  calc = Calculator.new
  @quotient1 = calc.divide 10, 2
  @quotient2 = calc.divide 2, 10
end

Then /^the quotients are not the same$/ do
  expect(@quotient1).to_not eq @quotient2
end

