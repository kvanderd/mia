# == Schema Information
#
# Table name: cards
#
#  id      :integer          not null, primary key
#  num1    :integer
#  num2    :integer
#  num3    :integer
#  deck_id :integer
#

class Card < ActiveRecord::Base
	belongs_to :deck
	has_many :guesses
	attr_accessible :num1, :num2
end
