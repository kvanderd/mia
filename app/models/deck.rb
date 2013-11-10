# == Schema Information
#
# Table name: decks
#
#  id       :integer          not null, primary key
#  name     :string(255)
#  level    :integer
#  grade_id :integer
#

class Deck < ActiveRecord::Base
	has_many :rounds
	has_many :cards
	belongs_to :grade
	attr_accessible :name, :level, :grade_id

end
