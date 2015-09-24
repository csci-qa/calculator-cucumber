class Calculator

  def add (*numbers)
    numbers.inject(:+)
  end

  def subtract (*numbers)
  	numbers.inject(:-)
  end

  def multiply (*numbers)
	  numbers.inject(:*)
  end


  def divide (*numbers)
  	begin
  	  numbers.inject(:/)
  	rescue ZeroDivisionError => e
  		raise ZeroDivisionError
  	 end
  end


end
