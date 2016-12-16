require 'calculator'

When /^I divide two numbers$/ do
  @quotient = Calculator.new.divide 6, 3
end

Then /^I get the quotient$/ do
  expect(@quotient).to eq 2
end

When /^I divide a number by zero$/ do
  expect{@quotient = Calculator.new.divide 6, 0}.to raise_error(ZeroDivisionError)
end

Then /^I will get an error$/ do
  # expect(@quotient).to raise_exception(ZeroDivisionError)
end

When /^I divide a number by one$/ do
  @quotient = Calculator.new.divide 6, 1
end

Then /^the quotient is that number$/ do
  expect(@quotient).to eq 6
end

When /^I divide the same numbers in different orders$/ do
  calc = Calculator.new
  @quotient1 = calc.divide 4, 5
  @quotient2 = calc.divide 5, 4
end

Then /^the quotients are not the same$/ do
  expect(@quotient1).not_to eq @quotient2
end

When /^I divide more than two numbers$/ do
  @quotient = Calculator.new.divide 12, 6, 2
end

Then /^I get the quotient of each number divided by the next number$/ do
  expect(@quotient).to eq 1
end

When /^I divide zero by an integer$/ do
  @quotient = Calculator.new.divide 0, 5
end

Then /^the quotient is zero$/ do
  expect(@quotient).to eq 0
end