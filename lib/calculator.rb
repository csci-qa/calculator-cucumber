class Calculator
  def add *numbers
    numbers.inject(:+)
  end
  
  def minus *numbers
	numbers.inject(:-)
  end
  
  def mult *numbers
	numbers.inject(:*)
  end
end
