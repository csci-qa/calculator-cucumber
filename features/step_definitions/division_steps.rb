require 'calculator'

When /^I divide two numbers$/ do
  @dividend = Calculator.new.divide 6, 3
end

Then /^I get the dividend$/ do
  expect(@dividend).to eq 2
end

When /^I divide a number by zero$/ do
  expect{@dividend = Calculator.new.divide 6, 0}.to raise_error(ZeroDivisionError)
end

Then /^I will get an error$/ do
  # expect(@dividend).to raise_exception(ZeroDivisionError)
end

When /^I divide a number by one$/ do
	@dividend = Calculator.new.divide 6, 1
end

Then /^the dividend is that number$/ do
  expect(@dividend).to eq 6
end

When /^I divide the same numbers in different orders$/ do
  calc = Calculator.new
  @dividend1 = calc.divide 4, 5
  @dividend2 = calc.divide 5, 4
end

Then /^the dividends are not the same$/ do
  expect(@dividend1).not_to eq @dividend2
end

When /^I divide more than two numbers$/ do
  @dividend = Calculator.new.divide 12, 6, 2
end

Then /^I get the dividend of each number divided by the next number$/ do
  expect(@dividend).to eq 1
end

When /^I divide zero by an integer$/ do
	@dividend = Calculator.new.divide 0, 5
end

Then /^the dividend is zero$/ do
  expect(@dividend).to eq 0
end