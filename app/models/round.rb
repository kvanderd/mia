# == Schema Information
#
# Table name: rounds
#
#  id         :integer          not null, primary key
#  deck_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Round < ActiveRecord::Base
	belongs_to :deck
	has_many :guesses
	attr_accessible :deck_id
end
