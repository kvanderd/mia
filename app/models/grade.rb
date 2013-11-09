class Grade < ActiveRecord::Base
	has_many :decks
  attr_accessible :name
end