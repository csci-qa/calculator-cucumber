require 'calculator'

When /^I divide 2 numbers$/ do 
	@div = Calculator.new.division 100, 50
end

Then /^it should result an integer$/ do
	expect(@div).to eq 2
end

When /^I divide two integers$/ do
	calc = Calculator.new
	@div1 = calc.division 25, 5
	@div2 = calc.division 5, 25
end

Then /^the order of operation should matter not commutative$/ do
	expect(@div1).should_not eq @div2
end

When /^I divide an integer by one$/ do
	@div = Calculator.new.division 20, 1
end

Then /^it should return the 1st integer$/ do
	expect(@div).to eq 20
end

When /^I divide zero by an integer$/ do
	@div = Calculator.new.division 0, 36
end

Then /^the result is zero$/ do
	expect(@div).to eq 0
end

When /^I divide an integer by 0$/ do
	begin
		@div = Calculator.new.division 56, 0
	rescue Exception => e
		@result = e
	end
end

Then /^the result should raise an error$/ do
	expect(@result).to be_a(ZeroDivisionError)
end

When /^I divide more than 2 numbers at a time$/ do
	@div = Calculator.new.division 60, 3, 10
end

Then /^I should get the correct result$/ do
	expect(@div).to eq 2
end