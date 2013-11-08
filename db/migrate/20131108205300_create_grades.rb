class CreateGrades < ActiveRecord::Migration
  def change
  	create_table :grades do |t|
  		t.string :name
  	end
  end
end
