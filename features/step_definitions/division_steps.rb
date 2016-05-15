
When(/^I divide two numbers$/) do
  @sum = Calculator.new.division 6, 2
end

Then(/^then I receive my answer$/) do
   expect(@sum).to eq 3
end

When(/^I divide my numbers backwards$/) do
  @sum1 = Calculator.new.division 6, 2
  @sum2 = Calculator.new.division 2, 6
end

Then(/^then I should get a different answers$/) do
   expect(@sum1).not_to eq @sum2
end

When(/^I divide a number by one$/) do
   @sum = Calculator.new.division 6, 1
end

Then(/^my divisional answer should be the division$/) do
  expect(@sum).to eq 6
end

When(/^I divide my number by zero$/) do
   @sum = Calculator.new
   end

Then(/^there is a problem$/) do
  expect{@sum.division 6, 0}.to raise_error (ZeroDivisionError)
end

When(/^I divide zero by a number$/) do
  @sum = Calculator.new.division 0.0, 2.0
end

Then(/^my answer will equal zero$/) do
   expect(@sum).to eq 0
end

When(/^I divide more than two numbers$/) do
  @sum = Calculator.new.division 12, 6, 2
end

Then(/^then I should receive a proper answer$/) do
  expect(@sum).to eq 1
end