When(/^I multiply numbers$/) do
 @sum = Calculator.new.multiplication 6, 2
end

Then(/^I receive an answer$/) do
  expect(@sum).to eq 12
end

When(/^the order of numbers is reversed$/) do
  @sum = Calculator.new.multiplication 6, 2
  @sum = Calculator.new.multiplication 2, 6
end

Then(/^the sum of those answers is the same$/) do
  expect(@sum).to eq 12
end

When(/^I multiply a number by one$/) do
 @sum = Calculator.new.multiplication 6, 1
end

Then(/^I will receive the number that was multiplied by one$/) do
  expect(@sum).to eq 6
end

When(/^I multiply a number by zero$/) do
  @sum = Calculator.new.multiplication 6, 0
end

Then(/^I will receive a zero$/) do
  expect(@sum).to eq 0
end

When(/^I multiply more than two numbers$/) do
 @sum = Calculator.new.multiplication 6, 2, 1
end

Then(/^I will receive the sum of those numbers$/) do
  expect(@sum).to eq 12
end