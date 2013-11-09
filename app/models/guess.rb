class Guess < ActiveRecord::Base
	belongs_to :deck
	attr_accessible :is_correct, :round_id
end