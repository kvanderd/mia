class CreateDecks < ActiveRecord::Migration
	def change
		create_table :decks do |t|
			t.integer :level
			t.belongs_to :grade
		end
	end
end
