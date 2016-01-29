

When(/^I subtract two numbers$/) do
	@sum = Calculator.new.subtract 4,2
end

Then /^So it is$/ do
  expect(@sum).to eq 2
end


When(/^I subtract zero to a number$/) do
	@sum = Calculator.new.subtract 4,0
end
Then /^sum equals$/ do
	expect(@sum).to eq 4
end


When(/^I subtract the same numbers in different orders$/) do
  @sum1 = Calculator.new.subtract 4,2
  @sum2 = Calculator.new.subtract 2,4
end

Then(/^the sums are different$/) do
  expect(@sum1).not_to eq @sum2
end

When(/^I subtract more than two numbers$/) do
 @sum = Calculator.new.subtract 12,3,2,1
end

Then (/^I get the sum of those numbers$/) do
	expect(@sum).to eq 6
end