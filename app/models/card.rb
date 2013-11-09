class Card < ActiveRecord::Base
	belongs_to :deck
	has_many :guesses
	attr_accessible :num1, :num2
end