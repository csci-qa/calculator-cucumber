When /^I multiply two numbers$/ do
	@product = Calculator.new.mult 5, 2
end

Then /^I get the product$/ do
	expect(@product).to eq 10
end

When /^I multiply by zero$/ do
	@product = Calculator.new.mult 5, 0
end

Then /^I get zero$/ do
	expect(@product).to eq 0
end

When /^I multiply by one$/ do
	@product = Calculator.new.mult 5, 1
end

Then /^I get the non one integer for a product$/ do
	expect(@product).to eq 5
end

When /^I multiply more than two numbers$/ do
	@product = Calculator.new.mult 5, 2, 2
end

Then /^I get a product of multiple numbers$/ do
	expect(@product).to eq 20
end
