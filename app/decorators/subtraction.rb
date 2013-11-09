module Subtraction
	def correct?(guess)
  	#this method will call the answer method, the answer will be evaluated against the user guess 
    self.subtraction_answer(self.num1, self.num2) == guess
  end


  def subtraction_answer(num1, num2)
  	num1 - num2
  end
end