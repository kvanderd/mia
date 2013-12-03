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

  def to_param
    "#{id}-#{name}".parameterize
  end

  def prepare_deck
    self.cards.map { |card| card.id }.shuffle
  end

  def serve_card(deck)
    deck.cards.pop
  end


  def deck_empty(deck)
  	deck.cards.empty?
  end

  def generate_deck_operator(deck)
    if deck.name == "Addition"
      "+"
    elsif 
      deck.name == "Subtraction"
      "-"
    end
    #this stores the operator in a variable for the view
  end

end
