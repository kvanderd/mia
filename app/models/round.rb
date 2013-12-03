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
	attr_accessible :deck_id, :user_id


	def correct_percentage
    return 0 if number_of_cards_played == 0
    (number_correct / number_of_cards_played.to_f*100).round(0)
  end

  def number_correct
    self.guesses.where(correct: true).count
  end

  def number_of_cards_played
    self.guesses.count
  end

  def number_incorrect
    self.guesses.where(correct: false).count
  end

  def size_of_deck
    self.deck.cards.length
  end

  def completion_percentage
    (number_of_cards_played / size_of_deck.to_f) * 100 
  end

  def formatted_stats
    "You finished #{number_of_cards_played} cards out of #{size_of_deck} and were correct #{correct_percentage}% of the time."
  end
end
