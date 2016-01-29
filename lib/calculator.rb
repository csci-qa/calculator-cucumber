class Calculator
  def add *numbers
    numbers.inject(:+)
  end
  
  def minus *numbers
	numbers.inject(:-)
  end
end
