class Calculator
  def add *numbers
    numbers.inject(:+)
  end
  
  def subtract *numbers
    numbers.inject(:-)
  end
  
  def multiply *numbers
	numbers.inject(:*)
  end
  
  def divide *numbers
    numbers.inject(:/)
  end
 
  def div_check(x, y)	  
	x.div y
	rescue ZeroDivisionError
	  true
	else
	  false
	end
	 
end
