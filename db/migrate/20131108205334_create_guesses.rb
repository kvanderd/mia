class CreateGuesses < ActiveRecord::Migration
  def change
  	create_table :guesses do |t|
  		t.boolean :is_correct
  		t.belongs_to :round
  		t.belongs_to :card
  	end
  end
end
