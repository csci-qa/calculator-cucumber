require 'calculator'

When /^I divide two numbers$/ do
  @quotient = Calculator.new.divide 6, 3
end

Then /^I get their quotient$/ do
  expect(@quotient).to eq 2
end

When /^I divide a number by zero$/ do
	calc = Calculator.new
	@quotient1 = calc.divide 10
	@quotient2 = calc.divide 0
end

Then /^there is an error$/ do
	@average = quotient1 / quotient2 rescue 0
end	

When /^I divide the same numbers in different orders$/ do
  calc = Calculator.new
  @quotient1 = calc.divide 5, 10
  @quotient2 = calc.divide 10, 5
end

Then /^the quotient is different$/ do
  expect(@quotient1).to eq 0
  expect(@quotient2).to eq 2
end

When /^I divide zero by a number$/ do
	@quotient = Calculator.new.divide 0, 10
end

Then /^the quotient is zero$/ do
	expect(@quotient) 
end

When /^I divide a number by one$/ do
	@quotient = Calculator.new.divide 5, 1
end

Then /^the quotient is the same as the numerator$/ do
	expect(@quotient).to eq 5
end