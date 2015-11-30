require 'calculator'

When /^I divide two numbers in different orders$/ do
  @quotient1 = Calculator.new.divide 4, 2
  @quotient2 = Calculator.new.divide 2, 4
end

Then /^I get different quotients$/ do
  expect(@quotient1).not_to eq @quotient2
end

When /^I divide zero by a number$/ do
  @quotient = Calculator.new.divide 0, 1
end

Then /^the quotient is zero$/ do
  expect(@quotient).to eq 0
end
	
When /^I divide multiple numbers$/ do
  @quotient = Calculator.new.divide 4, 2, 1
end

Then /^I get the quotient of multiple numbers$/ do
  expect(@quotient).to eq 2
end
	
When /^I divide a number by zero$/ do
  @errorflag = Calculator.new.div_check 6, 0
end

Then /^the quotient is an error$/ do
  expect(@errorflag).to eq true
end

 When /^I divide a number by one$/ do
   @quotient = Calculator.new.divide 4, 1
 end
 
 Then /^the quotient is that number$/ do
   expect(@quotient).to eq 4
 end