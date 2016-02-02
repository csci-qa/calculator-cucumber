require 'calculator'

When(/^I divide numbers$/) do
  @quot = Calculator.new.divd 10,2
end

Then(/^I get a quotient$/) do
  expect(@quot).to eq 5
end

When(/^I divide the same numbers in different orders$/) do
  calc = Calculator.new
  @quot1 = calc.divd 10,2
  @quot2 = calc.divd 2.0, 10.0
end

Then(/^the quotients are different$/) do
  expect(@quot1).to eq 5
  expect(@quot2).to eq 0.2
end

When(/^I divide a number by one$/) do
  @quot = Calculator.new.divd 5,1
end

Then(/^the quotient is the first number$/) do
  expect(@quot).to eq 5
end

When(/^I divide zero by any number but zero$/) do
  @quot = Calculator.new.divd 0,5
end

Then(/^the quotient is zero$/) do
  expect(@quot).to eq 0
end

When(/^I divide a number by zero$/) do
  @quot = Calculator.new
end

Then(/^there is an error$/) do
  expect{@quot.divd(1,0)}.to raise_error(ZeroDivisionError)
end