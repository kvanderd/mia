class Deck < ActiveRecord::Base
	has_many :rounds
	has_many :cards
	belongs_to :grade
	attr_accessible :name, :level, :grade_id
end