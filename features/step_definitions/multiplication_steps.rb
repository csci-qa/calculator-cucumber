require "Calculator"

When /^I multiply two numbers$/ do
  @result = Calculator.new.multiply 110, 5
end

Then /^I get the correct product$/ do
  expect(@result).to eq 550
end

When /^I multiply numbers in different orders$/ do
   @result1 = Calculator.new.multiply 6, 5
   @result2 = Calculator.new.multiply 5, 6
end

Then /^the products are the same$/ do
  expect(@result1).to eq @result2
end

When /^I multiply an integer by one$/ do
  @result = Calculator.new.multiply 42, 1
end

Then /^the product is the integer$/ do
  expect(@result).to eq 42
end

When /^I multiply an interger by zero$/ do
  @result = Calculator.new.multiply 6, 0
end

Then /^the product is zero$/ do
  expect(@result).to eq 0
end

When /^I multiply more than two numbers$/ do
  @result = Calculator.new.multiply 1, 5, 11, 10
 end