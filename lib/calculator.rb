class Calculator

	def add(*n1)
		n1.inject(:+)
	end
	
	def sub(*n1)
		n1.inject(:-)
	end

	def mult(*n1)
		n1.inject(:*)
	end
		
	def div(*n1)
		n1.inject(:/)
	end
end