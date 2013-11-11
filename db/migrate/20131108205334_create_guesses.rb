class CreateGuesses < ActiveRecord::Migration
  def change
  	create_table :guesses do |t|
  		t.integer :answer
  		t.belongs_to :round
  		t.belongs_to :card
  	end
  end
end
