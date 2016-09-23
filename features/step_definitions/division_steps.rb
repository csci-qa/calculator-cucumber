require 'calculator'

When /^I divide two numbers$/ do
  @quotient = Calculator.new.divide 10, 5
end

Then /^I get the quotient$/ do
  expect(@quotient).to eq 2
end

When /^I divide the same numbers in different orders$/ do
  calc = Calculator.new
  @quotient1 = calc.divide 5, 10
  @quotient2 = calc.divide 10, 5
end

Then /^the quotients are different$/ do
  expect(@quotient1).to eq 0
  expect(@quotient2).to eq 2
end

When /^I divide a number by zero$/ do
  @quotient = Calculator.new.divide 10, 0
end

Then /^I get a ZeroDivisionError which equals zero$/ do
	expect(@quotient).to eq 0
end

When /^I divide zero by a number$/ do
	@quotient = Calculator.new.divide 0, 10
end

Then /^the quotient is zero$/ do
	expect(@quotient).to eq 0
end

When /^I divide a number by one$/ do
	@quotient = Calculator.new.divide 10, 1
end

Then /^the quotient is the same as the numerator$/ do
	expect(@quotient).to eq 10
end


	
