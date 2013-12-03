class CreateCards < ActiveRecord::Migration
def change
  	create_table :cards do |t|
  		t.string :question1, :question2 , :answer, :hint
  		t.string :operator
  		t.belongs_to :deck
  	end
  end
end
