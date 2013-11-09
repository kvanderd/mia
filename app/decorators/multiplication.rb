module Multiplication
	def correct?(guess)
  	#this method will call the answer method, the answer will be evaluated against the user guess 
    self.multiplication_answer(self.num1, self.num2) == guess
  end


  def multiplication_answer(num1, num2)
  	num1 * num2
  end
end