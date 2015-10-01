require 'calculator'

When /^I divide two numbers$/ do
	@quotient = Calculator.new.divide 8,4
 end

Then /^I get the quotient$/ do
    expect(@quotient).to eq 2
 end
  
When /^I divide the same numbers in different orders$/ do
    calc = Calculator.new
	@quotient1 = calc.divide 8,3
	@quotient2 = calc.divide 3,8
 end

Then /^the quotients are not the same$/ do
	expect(@quotient1).not_to eq @quotient2
 end
  
When /^I divide a number by one$/ do
	@quotient = Calculator.new.divide 410,1
 end

Then /^the quotient should be the number$/ do
	expect(@quotient).to eq 410
 end
 
When /^I divide zero by a integer$/ do
	@quotient = Calculator.new.divide 0,4
 end

Then /^the quotient is zero$/ do
	expect(@quotient).to eq 0
 end

 When /^I divide a number by a zero$/ do
	begin
	 @quotient = Calculator.new.divide 11,0
	rescue => e
	 @quotient = e
	end
 end

Then /^I receive an error$/ do
	expect{@quotient}.to be_a ZeroDivisionError
 end

When /^I divide more than two numbers$/ do
	@quotient = Calculator.new.divide 20,5,2
 end
#using previous message statement