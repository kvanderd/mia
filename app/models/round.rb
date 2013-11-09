class Round < ActiveRecord::Base
	belongs_to :deck
	has_many :guesses
	attr_accessible :deck_id
end