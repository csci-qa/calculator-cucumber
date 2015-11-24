 class Calculator
  def add *numbers
    numbers.inject(:+)
  end
    def add *n
    sum = n.inject(:+)
		return sum
	end
	
	def subtract(*n)
		diff = n.inject(:-)
		return diff
	end
	
	def multiply(*n)
		prod = n.inject(:*)
		return prod
	end
		
	def divide(*n)
		quo = n.inject(:/)
		return quo
	end
end