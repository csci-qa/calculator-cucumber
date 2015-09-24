require 'calculator'

When /^I divide two numbers$/ do
	@quotient = Calculator.new.divide 4,2
end

Then /^I get the quotient$/ do
	expect(@quotient).to eq 2
end

When /^I divide a number by zero$/ do
	begin
	Calculator.new.divide 4,0
	rescue Exception => e
	end
end

Then /^I receive an error$/ do
	#catch 
	expect{Calculator.new.divide 4,0}.to raise_exception(ZeroDivisionError)
end

When /^I divide zero by a number$/ do
	@quotient = Calculator.new.divide 0,4
end

Then /^the quotient is zero$/ do
	expect(@quotient).to eq 0
end

When /^I divide a number by one$/ do
	@quotient = Calculator.new.divide 4,1
end

Then /^the quotient is the first number$/ do
	expect(@quotient).to eq 4
end

When /^I divide numbers in different orders$/ do
	calc = Calculator.new
	@quotient1 = calc.divide 4,2
	@quotient2 = calc.divide 2,4
end

Then /^the quotient is not the same$/ do
	expect(@quotient1).not_to eq @quotient2
end

When /^I divide more than two numbers$/ do
	@quotient = Calculator.new.divide 8,4,2
end

Then /^I get the final quotient$/ do
	expect(@quotient).to eq 1
end
