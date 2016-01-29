require 'calculator'

When(/^I subtract numbers$/) do
  @diff = Calculator.new.minus 10,5
end

Then(/^I get the difference$/) do
  expect(@diff).to eq 5
end

When(/^I subtract the same numbers in different orders$/) do
  calc = Calculator.new
  @diff1 = calc.minus 10,5
  @diff2 = calc.minus 5,10
end

Then(/^the sums are different$/) do
  expect(@diff1).to eq 5
  expect(@diff2).to eq -5
end

When(/^I subtract zero from a number$/) do
  @diff = Calculator.new.minus 10,0
end

Then(/^the difference is the first number$/) do
  expect(@diff).to eq 10
end

When(/^I subtract a number from itself$/) do
  @diff = Calculator.new.minus 10,10
end

Then(/^the difference is (\d+)$/) do |arg1|
  expect(@diff).to eq 0
end