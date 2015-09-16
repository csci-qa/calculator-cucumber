require 'calculator'

When /^I add two numbers$/ do
  @sum = Calculator.new.add 6, 23
end

Then /^I get the sum$/ do
  expect(@sum).to eq 29
end

When /^I add zero to a number$/ do
  @sum = Calculator.new.add 6, 0
end

Then /^the sum is that number$/ do
  expect(@sum).to eq 6
end

When /^I add the same numbers in different orders$/ do
  calc = Calculator.new
  @sum1 = calc.add 6, 23
  @sum2 = calc.add 23, 6
end

Then /^the sums are the same$/ do
  expect(@sum1).to eq @sum2
end

When /^I add more than two numbers$/ do
  @sum = Calculator.new.add 15, 6, 8, 0
end


When /^I subtract two numbers$/ do
  @difference = Calculator.new.subtract 13,3
end

Then /^I get the difference$/ do
  expect(@difference).to eq 10
end

When /^I subtract the same numbers in different orders$/ do
  calc = Calculator.new
  @difference1 = calc.subtract 4,6
  @difference2 = calc.subtract 6,4
end

Then /^the difference is not the same$/ do
  expect(@difference1).not_to eq @difference2
end

When /^I subtract zero from a number$/ do
  @difference = Calculator.new.subtract 7,0
end

Then /^the difference is that number$/ do
  expect(@difference).to eq 7
end

When /^I subtract to identical numbers$/ do
  @difference = Calculator.new.subtract 5,5
end

Then /^the difference is zero$/ do
  expect(@difference).to eq 0
end

When /^I subtract more than two numbers$/ do
  @difference = Calculator.new.subtract 13,2,1
end


When /^I multiply two numbers$/ do
  @product = Calculator.new.multiply 6,2
end

Then /^I get the product$/ do
  expect(@product).to eq 12
end

When /^I multiply the same numbers in different orders$/ do
  calc = Calculator.new
  @product1 = calc.multiply 3,7
  @product2 = calc.multiply 7,3
end

Then /^the product is the same$/ do
  expect(@product1).to eq @product2
end

When /^I multiply a number by one$/ do
  @product = Calculator.new.multiply 5,1
end

Then /^the product should be the first number$/ do
  expect(@product).to eq 5
end

When /^I multiply a number by zero$/ do
  @product = Calculator.new.multiply 8,0
end

Then /^the product should be zero$/ do
  expect(@product).to eq 0
end

When /^I multiply more than two numbers$/ do
  @product = Calculator.new.multiply 3,2,2
end


When /^I divide two numbers$/ do
  @quotient = Calculator.new.divide 12,6
end

Then /^I get the quotient$/ do
  expect(@quotient).to eq 2
end

When /^I divide the same numbers in different orders$/ do
  calc = Calculator.new
  @quotient1 = calc.divide 6,3
  @quotient2 = calc.divide 3,6
end

Then /^the quotient is different$/ do
  expect(@quotient1).not_to eq @quotient2
end

When /^I divide by one$/ do
  @quotient = Calculator.new.divide 4,1
end

Then /^the quotient should be the first number$/ do
  expect(@quotient).to eq 4
end

When /^I divide zero by another number$/ do
  @quotient = Calculator.new.divide 0,3
end

Then /^the quotient should be zero$/ do
  expect(@quotient).to eq 0
end

When /^I divide by zero$/ do
  @quotient = Calculator.new.divide 5,0
end

Then /^an error should be raised$/ do
  expect(@quotient).to raise_error
end

When /^ I divide by more than two numbers$/ do
  @quotient = Calculator.new.divide 12,2,3
end
