require "Calculator"

When /^I divide two numbers$/ do
  @result = Calculator.new.divide 35, 5
end

Then /^I get the correct quotient$/ do
  expect(@result).to eq 7
end

When /^I divide numbers in different orders$/ do
   @result1 = Calculator.new.divide 6, 1
   @result2 = Calculator.new.divide 1, 6
end

Then /^the quotients are different$/ do
  expect(@result1).not_to eq @result2
end

When /^I divide by one$/ do
  @result = Calculator.new.divide 6, 1
end

Then /^I get the original number$/ do
  expect(@result).to eq 6
end

When /^I divide zero by an integer$/ do
  @result = Calculator.new.divide 0, 42
end

Then /^the quotient is zero$/ do
  expect(@result).to eq 0
end

When /^I divide by zero$/ do
  begin
    @result = Calculator.new.divide 10, 0
  rescue => myError
    @result = myError
  end
end

Then /^I get an error$/ do
  expect(@result).to be_a(ZeroDivisionError)
end

#When /^I divide by zero$/ do
#  @boolresult = expect {Calculator.new.divide(10,0)}.to raise_error(ZeroDivisionError)
#end

#Then /^I get an error$/ do
#  expect(@boolresult).to be true
#end

When /^I divide more than two numbers$/ do
  @result = Calculator.new.divide 1260, 3, 2, 6, 5
 end