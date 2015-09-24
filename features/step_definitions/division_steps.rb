require 'calculator'

When /^I divide two numbers$/ do
  @quotient = Calculator.new.divide 12,6
end

Then /^I get the quotient$/ do
  expect(@quotient).to eq 2
end

When /^I divide the same numbers in different orders$/ do
  calc = Calculator.new
  @quotient1 = calc.divide 6,3
  @quotient2 = calc.divide 3,6
end

Then /^the quotient is different$/ do
  expect(@quotient1).not_to eq @quotient2
end

When /^I divide by one$/ do
  @quotient = Calculator.new.divide 4,1
end

Then /^the quotient should be the first number$/ do
  expect(@quotient).to eq 4
end

When /^I divide zero by another number$/ do
  @quotient = Calculator.new.divide 0,3
end

Then /^the quotient should be zero$/ do
  expect(@quotient).to eq 0
end

When /^I divide by zero$/ do
  begin
    @quotient = Calculator.new.divide 5,0
  rescue => e
    @quotient = e
  end
end

Then /^an error should be raised$/ do
  expect(@quotient).to be_a ZeroDivisionError
end

When /^I divide by more than two numbers$/ do
  @quotient = Calculator.new.divide 12,2,3
end
