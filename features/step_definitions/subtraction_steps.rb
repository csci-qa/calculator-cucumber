require 'calculator'


When /^I subtract one number from the other$/ do
  @difference = Calculator.new.subtract 14, 10
end

Then /^I get the difference between the numbers$/ do 
  expect(@difference).to eq 4
end 

When /^I subtract zero from a number$/ do 
  @difference = Calculator.new.subtract 14, 0
end

Then /^the difference between the numbers remains that number$/ do 
  expect(@difference).to eq 14
end

When /^I subtract the same numbers in different orders$/ do 
  calc = Calculator.new
  @difference1 = calc.subtract 10, 14
  @difference2 = calc.subtract 14, 10
end

Then /^the difference between the numbers are different$/ do
  expect(@difference1).to eq -4
  expect(@difference2).to eq 4
end