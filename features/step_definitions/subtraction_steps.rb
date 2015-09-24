require 'calculator'

When /^I subtract two numbers$/ do
  calc = Calculator.new
  @diff = calc.subtract(6, 2)
end

Then /^I get the difference$/ do
  expect(@diff).to eq 4
end

When /^I subtract zero from a number$/ do
	@diff1 = Calculator.new.subtract 6, 0
end

Then /^the difference is that number$/ do
	expect(@diff1).to eq 6
end

When /^I subtract the same numbers in different orders$/ do
	calc = Calculator.new
	@diff1 = Calculator.new.subtract 6, 4
	@diff2 = Calculator.new.subtract 4, 6
end

Then /^the sums are not the same$/ do
	expect(@diff1).not_to eq @diff2
end

When /^I subtract more than two numbers$/ do
	@diff = Calculator.new.subtract 8,4,2
end

Then /^I get the total$/ do
	expect(@diff).to eq 2
end

When /^I subtract a number from itself$/ do
	@diff = Calculator.new.subtract 8,8
end

Then /^I get zero$/ do
	expect(@diff).to eq 0
end
