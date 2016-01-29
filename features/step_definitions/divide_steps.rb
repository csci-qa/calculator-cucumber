require 'calculator'

When(/^dividing two numbers$/) do
  @quotient = Calculator.new.divd 36, 6
end

Then(/^get the quotient$/) do
  expect(@quotient).to eq 6
end

When(/^dividing those numbers reversed$/) do
  @quotient = Calculator.new.divd 6, 36
end

Then(/^I want the fraction$/) do
  expect(@quotient).not_to eq 6
end

When(/^dividing by zero$/) do
  expect{8/0}.to raise_error ZeroDivisionError
end

Then(/^I want an error$/) do
	#The compiler throws an error as soon as calculation is done 
	#causing the test to fail immediately, as opposed to raising
	#the error immediately after
end