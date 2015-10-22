require 'calculator'

When /^I divide two numbers$/ do
  @divide = Calculator.new.divide 6, 3
end

Then /^I get the dividend$/ do
  expect(@divide).to eq 2
end

When /^I divide a number by zero$/ do
  @divide = Calculator.new.divide 6, 0
end

Then /^the dividend is zero$/ do
  expect(@divide).to eq infinity
end

When /^I divide the same numbers in different orders$/ do
  calc = Calculator.new
  @divide1 = calc.divide 6, 3
  @divide2 = calc.divide 3, 6
end

Then /^the dividends are different$/ do
  expect(@divide1).to eq 2
  expect(@divide2).to eq 0
end

When /^I divide more than two numbers$/ do
  @divide = Calculator.new.divide 40, 2, 5, 2
end
