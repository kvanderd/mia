class CreateCards < ActiveRecord::Migration
def change
  	create_table :cards do |t|
  		t.integer :num1, :num2, :num3
  		t.belongs_to :deck
  	end
  end
end
