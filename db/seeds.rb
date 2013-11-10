# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#create 3 grades  
  Grade.create(name: "First Grade", level: 1)
  # Grade.create(name: "Second Grade", level: 2)
  # Grade.create(name: "Third Grade", level: 3)



#Addition decks for Grade level 1 

#addition Decks
level = 1
3.times do
	@deck = Deck.create(name: "Addition", level: level, grade_id: 1)
    10.times do
      var1 = rand(1..5)
      var2 = rand(0..5) 
      card = Card.create(num1: var1, num2: var2, deck_id: @deck.id)
      card.extend(Addition)
    end
	level += 1
end


# 10.times do
#   var1 = rand(5..10)
#   var2 = rand(5..15) 
# 	Card.create(num1: var1, num2: var2, deck_id: 2)
# end

# 10.times do
#   var1 = rand(10..25)
#   var2 = rand(10..25) 
# 	Card.create(num1: var1, num2: var2, deck_id: 3)
# end

# #subtraction Deck
# level = 1
# 3.times do
#   Deck.create(name: "Subtraction", level: level, grade_id: 1)
#   level += 1
# end

# #cards for deck 1
# 10.times do
#   var1 = rand(1..5)
#   var2 = rand(0..5) 
#   Card.create(num1: var1, num2: var2, deck_id: 4)
# end

# 10.times do
#   var1 = rand(5..10)
#   var2 = rand(5..15) 
#   Card.create(num1: var1, num2: var2, deck_id: 5)
# end

# 10.times do
#   var1 = rand(10..25)
#   var2 = rand(10..25) 
#   Card.create(num1: var1, num2: var2, deck_id: 6)
# end


