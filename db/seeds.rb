# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#create 3 grades  
  Grade.create(name: "First Grade")
  Grade.create(name: "Second Grade")
  Grade.create(name: "Third Grade")

# Decks for grade 1

deck = 1

3.times do 
	Deck.create(name: "Addition", level: deck, grade_id: 1)
	Deck.create(name: "Subtraction", level: deck, grade_id: 1)
	deck += 1
end


decks = Deck.where(name: "Addition", grade_id: 1)

10.times do
	card = Card.create(num1: num1, num2: num2, deck_id: deck_id)
	card.extend(Addition)
end




deck = 1

# decks for grade 2
3.times do
	Deck.create(name: "Addition", level: deck, grade_id: 2)
	Deck.create(name: "Subtraction", level: deck, grade_id: 2)
	deck += 1
end

deck = 1
# decks for grade 3
3.times do
	Deck.create(name: "Addition", level: deck, grade_id: 3)
	Deck.create(name: "Subtraction", level: deck, grade_id: 3)
	deck += 1
end




