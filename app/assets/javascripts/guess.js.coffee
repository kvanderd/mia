class Deck
  constructor: (@ids, @length, @counter) ->
    #there needs to be a method on deck that stores the length of the deck we can check the counter
    #against it to see if the game is done.

class Card
  constructor: (@answer, @hint, @id, @question1) ->

class Round

  # increaseCounter: ->
  #   @.counter++

  getCard: (cardId, deck) ->
    console.log cardId
    if Number(deck.length) == Number(deck.counter)
      window.location.href = "http://www.miamath.com/rounds"
    else
      self = @
      deck.counter++
      $.ajax "http://www.miamath.com/rounds/guesses/get_card",
        method: "GET",
        data: "cardId=" + cardId    #"cardId=" + deck.counter
        success: (data) ->
          self.dealCard(new Card(data.answer, data.hint, data.id, data.question1))
        error: ->
          alert "Oups, something went wrong"

  dealCard: (card) ->
    $(".num1").append(card.question1)
    $("#guess_card_id").append().val(card.id)
    $(".hint").append(card.hint)

  collectCard: () ->
    $(".is_correct").show()
    $(".num1, .is_correct, .hint").empty()
    $("#guess_answer").val(" ")
    $(".response").val " "
    # $(".board").addClass("hide")


  showAnswer: (answer) ->
    $(".hint").addClass("hide")
    $(".is_correct").append(answer).delay(1500).fadeOut "slow", ->
      # $(".board").removeClass("hide")
      $('.card').removeClass('flipped')


$ ->
  $('.card').addClass('.front')
  $(".hint").addClass("hide")
  deck = new Deck(gon.shuffled_deck, gon.shuffled_deck.length, 0)
  round = new Round
  round.getCard(deck.ids.pop(), deck)

  $("#answer").click (event) ->
    event.preventDefault()
    $('.card').addClass('flipped')
    guess = Number $("#guess_answer").val()
    cardId = Number $('#guess_card_id').val()
    $.ajax "http://www.miamath.com/rounds/guesses",
      method: "POST",
      data: guess: guess, card_id: cardId,
      dataType: "text"
      success: (data) ->
        round.collectCard().after(round.showAnswer(data))
        round.getCard(deck.ids.pop(), deck)
      error: ->
        alert "Oups, something went wrong!!"

  $(".love").click (event) =>
    event.preventDefault()
    $(".hint").removeClass("hide")



        #create a new round object. Show return data and then get a new card
        # here you remove the card and show the answer - the round should do this
#increase the counter





# questionRequest = () ->
#   if $counter == $length
#     window.location.href = "/rounds"
#   else
#     $.ajax "/rounds/guesses/get_card",
#       method: "GET",
#       data: "card_id=" + $deck[$counter]
#       success: (data) ->
#         showCard(data)
#         # append the data.hint, keep hidden
#       error: ->
#         alert "fuck, this was not suppose to happen"

# showCard = (data) ->
#   $("#card").delay(1000).fadeIn("slow")
#   $(".num1").append(data.question1)
#   # $(".operator").append(data.operator)
#   # $(".num2").append(data.question2)
#   $("#guess_card_id").append().val(data.id)
#   console.log data.hint
#   $(".hint").append(data.hint)

# clearData = (data) ->
#   $(".num1, .num2, .operator, #is_correct, .hint").empty()
#   $("#guess_answer").val(" ")
#   # $("#card").delay(2000).fadeIn("slow")
#   $(".response").val " "


# showResponse = (data) ->
#   $("#card").hide()
#   $(".hint").addClass("hide")
#   $("#is_correct").show()
#   $("#is_correct").append(data).delay(1500).fadeOut "slow", ->
#     $.when(clearData()).done(questionRequest())



  # $(".hint").addClass("hide")
  # questionRequest()
  # $("#answer").click (event) =>
  #     event.preventDefault()
  #     guess = Number $("#guess_answer").val()
  #     card = Number $('#guess_card_id').val()

  #     $.ajax "/rounds/guesses",
  #       method: "POST",
  #       data: guess: guess, card_id: $deck[$counter],
  #       dataType: "text"
  #       success: (data) ->
  #         console.log data
  #         $counter++
  #         showResponse(data)
  #       error: ->
  #         alert "fuck that wasn't suppose to happen - Click Event"

  # $(".love").click (event) =>
  #   event.preventDefault()
  #   $(".hint").removeClass("hide")







# $deck = gon.shuffled_deck
# $length = gon.shuffled_deck.length
# $counter = 0


# questionRequest = () ->
#   if $counter == $length
#     window.location.href = "/rounds"
#   else
#     $.ajax "/rounds/guesses/get_card",
#       method: "GET",
#       data: "card_id=" + $deck[$counter]
#       success: (data) ->
#         showCard(data)
#         # append the data.hint, keep hidden
#       error: ->
#         alert "fuck, this was not suppose to happen"

# showCard = (data) ->
#   $("#card").delay(1000).fadeIn("slow")
#   $(".num1").append(data.question1)
#   # $(".operator").append(data.operator)
#   # $(".num2").append(data.question2)
#   $("#guess_card_id").append().val(data.id)
#   console.log data.hint
#   $(".hint").append(data.hint)

# clearData = (data) ->
#   $(".num1, .num2, .operator, #is_correct, .hint").empty()
#   $("#guess_answer").val(" ")
#   # $("#card").delay(2000).fadeIn("slow")
#   $(".response").val " "


# showResponse = (data) ->
#   $("#card").hide()
#   $(".hint").addClass("hide")
#   $("#is_correct").show()
#   $("#is_correct").append(data).delay(1500).fadeOut "slow", ->
#     $.when(clearData()).done(questionRequest())


# $ ->
#   $(".hint").addClass("hide")
#   questionRequest()
#   $("#answer").click (event) =>
#       event.preventDefault()
#       guess = Number $("#guess_answer").val()
#       card = Number $('#guess_card_id').val()

#       $.ajax "/rounds/guesses",
#         method: "POST",
#         data: guess: guess, card_id: $deck[$counter],
#         dataType: "text"
#         success: (data) ->
#           console.log data
#           $counter++
#           showResponse(data)
#         error: ->
#           alert "fuck that wasn't suppose to happen - Click Event"

#   $(".love").click (event) =>
#     event.preventDefault()
#     $(".hint").removeClass("hide")




#
