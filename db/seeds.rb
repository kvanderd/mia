# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@grade2 = Grade.create(name: "Second Grade")
@grade3 = Grade.create(name: "Third Grade")
@grade4 = Grade.create(name: "Forth Grade")

#grade 2

@addiction_deck = Deck.create(name: "Addition", level: 1, grade_id: @grade2.id)
@subtraction_deck = Deck.create(name: "Subtraction", level: 1, grade_id: @grade2.id)
@multiplication_deck = Deck.create(name: "Multiplication", level: 1, grade_id: @grade2.id)
@division_deck = Deck.create(name: "Division", level: 1, grade_id: @grade2.id)
# Deck.create(name: "Grammar", level: 1, grade_id: @grade2)
# Deck.create(name: "Vocabulary", level: 1, grade_id: @grade2)

10.times do 
  var1 = rand(0..2)
  var2 = rand(2..5) 
  answer = var1 + var2
  hint = "Add 1 to #{answer - 1} to get the answer."
  Card.create(question1: "#{var1} + #{var2}", answer: "#{answer}", hint: hint, deck_id: @addiction_deck.id )
end


10.times do 
  var1 = rand(0..2)
  var2 = rand(2..5) 
  answer = var1 - var2
  hint = "Add 1 to #{answer - 1} to get the answer."
  Card.create(question1: "#{var1} - #{var2}", answer: "#{answer}", hint: hint, deck_id: @subtraction_deck.id )
end

10.times do 
  var1 = rand(0..2)
  var2 = rand(2..5) 
  answer = var1 * var2
  hint = "Add 1 to #{answer - 1} to get the answer."
  Card.create(question1: "#{var1} x #{var2}", answer: "#{answer}", hint: hint, deck_id: @multiplication_deck.id )
end


Card.create(question1: "10 / 2", answer: "5", hint: "Subtract 1 from 6 to get the answer", deck_id: @division_deck.id )
Card.create(question1: "5 / 1", answer: "5", hint: "Subtract 1 from 6 to get the answer", deck_id: @division_deck.id )
Card.create(question1: "1 / 1", answer: "1", hint: "Subtract 1 from 2 to get the answer", deck_id: @division_deck.id )
Card.create(question1: "4 / 2", answer: "2", hint: "Subtract 1 from 3 to get the answer", deck_id: @division_deck.id )
Card.create(question1: "6 / 2", answer: "3", hint: "Subtract 1 from 4 to get the answer", deck_id: @division_deck.id )
Card.create(question1: "8 / 2", answer: "4", hint: "Subtract 1 from 5 to get the answer", deck_id: @division_deck.id )


# grade 3
@addiction_deck = Deck.create(name: "Addition", level: 1, grade_id: @grade3.id)
@subtraction_deck = Deck.create(name: "Subtraction", level: 1, grade_id: @grade3.id)
@multiplication_deck = Deck.create(name: "Multiplication", level: 1, grade_id: @grade3.id)
@division_deck = Deck.create(name: "Division", level: 1, grade_id: @grade3.id)

10.times do 
  var1 = rand(2..5)
  var2 = rand(5..10) 
  answer = var1 + var2
  hint = "Add 1 to #{answer - 1} to get the answer."
  Card.create(question1: "#{var1} + #{var2}", answer: "#{answer}", hint: hint, deck_id: @addiction_deck.id )
end


10.times do 
  var1 = rand(2..5)
  var2 = rand(5..10) 
  answer = var1 - var2
  hint = "Add 1 to #{answer - 1} to get the answer."
  Card.create(question1: "#{var1} - #{var2}", answer: "#{answer}", hint: hint, deck_id: @subtraction_deck.id )
end

10.times do 
  var1 = rand(2..5)
  var2 = rand(5..10) 
  answer = var1 * var2
  hint = "Add 1 to #{answer - 1} to get the answer."
  Card.create(question1: "#{var1} x #{var2}", answer: "#{answer}", hint: hint, deck_id: @multiplication_deck.id )
end


Card.create(question1: "20 / 2", answer: "10", hint: "Subtract 1 from 11 to get the answer", deck_id: @division_deck.id )
Card.create(question1: "15 / 1", answer: "15", hint: "Subtract 1 from 16 to get the answer", deck_id: @division_deck.id )
Card.create(question1: "0 / 0", answer: "0", hint: "Subtract 1 from 1 to get the answer", deck_id: @division_deck.id )
Card.create(question1: "10 / 10", answer: "1", hint: "Subtract 1 from 2 to get the answer", deck_id: @division_deck.id )
Card.create(question1: "7 / 2", answer: "3.5", hint: "Subtract 1 from 4.5 to get the answer", deck_id: @division_deck.id )
Card.create(question1: "16 / 8", answer: "2", hint: "Subtract 1 from 3 to get the answer", deck_id: @division_deck.id )


#4

@addiction_deck = Deck.create(name: "Addition", level: 1, grade_id: @grade4.id)
@subtraction_deck = Deck.create(name: "Subtraction", level: 1, grade_id: @grade4.id)
@multiplication_deck = Deck.create(name: "Multiplication", level: 1, grade_id: @grade4.id)
@division_deck = Deck.create(name: "Division", level: 1, grade_id: @grade4.id)


10.times do 
  var1 = rand(18..115)
  var2 = rand(16..200) 
  answer = var1 + var2
  hint = "Add 1 to #{answer - 1} to get the answer."
  Card.create(question1: "#{var1} + #{var2}", answer: "#{answer}", hint: hint, deck_id: @addiction_deck.id )
end


10.times do 
  var1 = rand(8..15)
  var2 = rand(16..200) 
  answer = var1 - var2
  hint = "Add 1 to #{answer - 1} to get the answer."
  Card.create(question1: "#{var1} - #{var2}", answer: "#{answer}", hint: hint, deck_id: @subtraction_deck.id )
end

10.times do 
  var1 = rand(8..15)
  var2 = rand(16..20)  
  answer = var1 * var2
  hint = "Add 1 to #{answer - 1} to get the answer."
  Card.create(question1: "#{var1} x #{var2}", answer: "#{answer}", hint: hint, deck_id: @multiplication_deck.id )
end


Card.create(question1: "40 / 2", answer: "20", hint: "Subtract 1 from 21 to get the answer", deck_id: @division_deck.id )
Card.create(question1: "30 / 1", answer: "30", hint: "Subtract 1 from 31 to get the answer", deck_id: @division_deck.id )
Card.create(question1: "100 / 100", answer: "100", hint: "Subtract 1 from 101 to get the answer", deck_id: @division_deck.id )
Card.create(question1: "10 / 10", answer: "1", hint: "Subtract 1 from 1 to get the answer", deck_id: @division_deck.id )
Card.create(question1: "9 / 2", answer: "4.5", hint: "Subtract 1 from 5.5 to get the answer", deck_id: @division_deck.id )
Card.create(question1: "15 / 2", answer: "2", hint: "Subtract 1 from 3 to get the answer", deck_id: @division_deck.id )







# CSV.foreach("States.csv", headers: true) do |row|
#   Card.create(question: "What is the capital of " + row.field('name') + "?", answer: row.field('capital'))
# end

# most_populous_city_by_state = Deck.create(name: "US: most populous city per state")

# CSV.foreach("States.csv", headers: true) do |row|
#   most_populous_city_by_state.cards << Card.create(question: "What is the most populous city in " + row.field('name') + "?", answer: row.field('most populous city'))
# end




#addition Decks
# level = 1
# 3.times do
#   @deck = Deck.create(name: "Addition", level: level, grade_id: @grade1.id)
#     10.times do
#       var1 = rand(1..5)
#       var2 = rand(0..5) 
#       answer = var1 + var2
#       hint = "add one to #{answer - 1} to get the answer"
#       card = Card.create(question1: var1, question2: var2, operator: "+", answer: answer, hint: hint, deck_id: @deck.id)
#     end
#   level += 1
# end

# #subtration decks
# level = 1
# 3.times do
#   @deck = Deck.create(name: "Subtraction", level: level, grade_id: @grade1)
#     10.times do
#       var1 = rand(1..3)
#       var2 = rand(3..5) 
#       answer = var1 - var2
#       hint = "add one to #{answer - 1} to get the answer"
#       card = Card.create(question1: var1, question2: var2, operator: "-", answer: answer, deck_id: @deck.id, hint: hint)
#     end
#   level += 1
# end


# #DECKS FOR GRADE 2

# #addition Decks
# level = 1
# 3.times do
#   @deck = Deck.create(name: "Addition", level: level, grade_id: @grade2.id)
#     10.times do
#       var1 = rand(1..5)
#       var2 = rand(5..15) 
#       answer = var1 + var2
#       card = Card.create(question1: var1, question2: var2, operator: "+", answer: answer, deck_id: @deck.id)
#     end
#   level += 1
# end

# #subtraction decks
# level = 1
# 3.times do
#   @deck = Deck.create(name: "Subtraction", level: level, grade_id: @grade2.id)
#     10.times do
#       var1 = rand(1..5)
#       var2 = rand(5..15) 
#       answer = var1 - var2
#       card = Card.create(question1: var1, question2: var2, operator: "-", answer: answer, deck_id: @deck.id)
#     end
#   level += 1
# end

# #DECKS FOR GRADE 3

# #addition Decks
# level = 1
# 3.times do
#   @deck = Deck.create(name: "Addition", level: level, grade_id: @grade3.id)
#     10.times do
#       var1 = rand(5..10)
#       var2 = rand(10..25) 
#       answer = var1 + var2
#       card = Card.create(question1: var1, question2: var2, operator: "+", answer: answer, deck_id: @deck.id)
#     end
#   level += 1
# end

# #subtraction decks
# level = 1
# 3.times do
#   @deck = Deck.create(name: "Subtraction", level: level, grade_id: @grade3.id)
#     10.times do
#       var1 = rand(5..15)
#       var2 = rand(10..25) 
#       answer = var1 - var2
#       card = Card.create(question1: var1, question2: var2, operator: "-", answer: answer, deck_id: @deck.id)
#     end
#   level += 1
# end


# #DECKS FOR GRADE 4

# #addition Decks
# level = 1
# 3.times do
#   @deck = Deck.create(name: "Addition", level: level, grade_id: @grade4.id)
#     10.times do
#       var1 = rand(25..50)
#       var2 = rand(10..45) 
#       answer = var1 + var2
#       card = Card.create(question1: var1, question2: var2, operator: "+", answer: answer, deck_id: @deck.id)
#     end
#   level += 1
# end

# #subtraction decks
# level = 1
# 3.times do
#   @deck = Deck.create(name: "Subtraction", level: level, grade_id: @grade4.id)
#     10.times do
#       var1 = rand(25..55)
#       var2 = rand(20..35) 
#       answer = var1 - var2
#       card = Card.create(question1: var1, question2: var2, operator: "-", answer: answer, deck_id: @deck.id)
#     end
#   level += 1
# end


# #DECKS FOR GRADE 5

# #addition Decks
# level = 1
# 3.times do
#   @deck = Deck.create(name: "Addition", level: level, grade_id: @grade5.id)
#     10.times do
#       var1 = rand(55..70)
#       var2 = rand(50..95) 
#       answer = var1 + var2
#       card = Card.create(question1: var1, question2: var2, operator: "+", answer: answer, deck_id: @deck.id)
#     end
#   level += 1
# end

# #subtraction decks
# level = 1
# 3.times do
#   @deck = Deck.create(name: "Subtraction", level: level, grade_id: @grade5.id)
#     10.times do
#       var1 = rand(45..65)
#       var2 = rand(30..55) 
#       answer = var1 - var2
#       card = Card.create(question1: var1, question2: var2, operator: "-", answer: answer, deck_id: @deck.id)
#     end
#   level += 1
# end
