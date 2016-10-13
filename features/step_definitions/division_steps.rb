require 'calculator'

When /^I divide a number by another number$/ do
  @quotient = Calculator.new.divide 10, 2
end  

Then /^I get the quotient$/ do
  expect(@quotient).to eq 5
end

When /^I divide a number by zero$/ do
  @quotient = Calculator.new.divide 10, 0
end

Then /^I get a ZeroDivisionError which equals zero$/ do
  expect(@quotient).to eq 0
end

When /^I divide the same numbers in different orders$/ do 
  calc = Calculator.new
  @quotient1 = calc.divide 10, 2
  @quotient2 = calc.divide 2.0, 10.0
end

Then /^the quotients are different$/ do
  expect(@quotient1).to eq 5
  expect(@quotient2).to eq 0.2 
end 