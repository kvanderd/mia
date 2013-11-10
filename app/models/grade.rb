# == Schema Information
#
# Table name: grades
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class Grade < ActiveRecord::Base
	has_many :decks
  attr_accessible :name
end
