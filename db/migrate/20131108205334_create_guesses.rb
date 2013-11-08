class CreateGuesses < ActiveRecord::Migration
  def change
  	create_table :guesses do |t|
  		t.boolean :is_correct
  		t.belongs_to :round
  	end
  end
end
