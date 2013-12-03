# == Schema Information
#
# Table name: cards
#
#  id        :integer          not null, primary key
#  question1 :string(255)
#  question2 :string(255)
#  answer    :string(255)
#  hint      :string(255)
#  operator  :string(255)
#  deck_id   :integer
#

class Card < ActiveRecord::Base
	belongs_to :deck
	has_many :guesses
	attr_accessible :question1, :question2, :deck_id, :answer, :operator, :hint

	def is_correct?(guess)
		self.answer.downcase == guess.downcase
	end

	def response(guess_state)
		guess_state == true ?  @response = "You got the answer correct" :  @response = "Sorry, you missed this one. The correct answer is #{self.answer}"
	end

end
 
