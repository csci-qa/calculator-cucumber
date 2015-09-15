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


When /^I divide a number by one$/ do
  @quotient = Calculator.new.divide 5, 1
end

Then /^the quotient should be the number$/ do
  expect(@quotient).to eq 5
end

When /^I divide a zero by an integer$/ do
  @quotient = Calculator.new.divide 0, 5
end

Then /^the quotient is zero$/ do
  expect(@quotient).to eq 0
end

When /^I divide any integer by a zero$/ do
  @quotient = lambda { Calculator.new.divide 5, 0 }
end

Then /^it should raise an error$/ do
  expect { @quotient.call }.to raise_error(ZeroDivisionError)
end
