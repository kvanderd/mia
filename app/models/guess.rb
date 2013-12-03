# == Schema Information
#
# Table name: guesses
#
#  id       :integer          not null, primary key
#  answer   :integer
#  correct  :boolean
#  round_id :integer
#  card_id  :integer
#

class Guess < ActiveRecord::Base
	belongs_to :card 
	belongs_to :round
	attr_accessible :correct, :round_id, :answer, :card_id
end
