class Calculator

  def add *numbers
    numbers.inject(:+)
  end
  
	def subtract *numbers
    numbers.inject(:-)
	end
	
	def multiplication *numbers
	numbers.inject(:*)
	end
	
	def division *numbers
	numbers.inject(:/)
	end
end