# == Schema Information
#
# Table name: guesses
#
#  id         :integer          not null, primary key
#  is_correct :boolean
#  round_id   :integer
#

class Guess < ActiveRecord::Base
	belongs_to :card
	attr_accessible :is_correct, :round_id, :answer
end
