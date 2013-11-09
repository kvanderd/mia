class Guess < ActiveRecord::Base
	belongs_to :card
	attr_accessible :is_correct, :round_id
end