require 'calculator'

When /^I divide two numbers$/ do
	@quotient = Calculator.new.divide 20, 5
end

Then /^I get the quotient$/ do
  expect(@quotient).to eq 4
end

When /^I divide by zero$/ do
  @quotient = Calculator.new.divide 6, 0
end

Then /^it will raise an error$/ do
  expect(@quotient).to eq 0
end

When /^I divide zero by a number$/ do
  @quotient = Calculator.new.divide 0, 6
end

Then /^the quotient will be zero$/ do
  expect(@quotient).to eq 0
end

When /^I divide the number by itself$/ do
  @quotient = Calculator.new.divide 6, 6
end

Then /^the quotient is one$/ do
  expect(@quotient).to eq 1
end

When /^I divide the same numbers in different orders$/ do
  calc = Calculator.new
  @quotient1 = calc.divide 5.00, 20.00
  @quotient2 = calc.divide 20, 5
end

Then /^the quotients are different$/ do
  expect(@quotient1).to eq 0.25
  expect(@quotient2).to eq 4
end

When /^I divide more than two numbers$/ do
  @quotient = Calculator.new.divide 20, 5, 1
end

Then /^I get the total quotient$/ do
  expect(@quotient).to eq 4
end