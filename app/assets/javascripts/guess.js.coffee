$deck = gon.shuffled_deck
$length = gon.shuffled_deck.length
$counter = 0


questionRequest = () ->
	if $counter == $length
		window.location.href = "/rounds"
	else
		$.ajax "/rounds/guesses/get_card",
			method: "GET",
			data: "card_id=" + $deck[$counter]
			success: (data) ->
				showCard(data)
				# append the data.hint, keep hidden
			error: ->
				alert "fuck, this was not suppose to happen"

showCard = (data) ->
	$("#card").delay(1000).fadeIn("slow")
	$(".num1").append(data.question1)
	# $(".operator").append(data.operator)
	# $(".num2").append(data.question2)
	$("#guess_card_id").append().val(data.id)
	console.log data.hint
	$(".hint").append(data.hint)

clearData = (data) ->
	$(".num1, .num2, .operator, #is_correct, .hint").empty()
	$("#guess_answer").val(" ")
	# $("#card").delay(2000).fadeIn("slow")
	$(".response").val " "
		

showResponse = (data) ->
	$("#card").hide()
	$(".hint").addClass("hide")
	$("#is_correct").show()
	$("#is_correct").append(data).delay(1500).fadeOut "slow", ->
		$.when(clearData()).done(questionRequest())


$ ->
	$(".hint").addClass("hide")
	questionRequest()
	$("#answer").click (event) =>
			event.preventDefault()
			guess = Number $("#guess_answer").val()
			card = Number $('#guess_card_id').val()

			$.ajax "/rounds/guesses",
				method: "POST",
				data: guess: guess, card_id: $deck[$counter],
				dataType: "text"
				success: (data) ->
					console.log data
					$counter++
					showResponse(data)
				error: ->
					alert "fuck that wasn't suppose to happen - Click Event"
	
	$(".love").click (event) =>
		event.preventDefault()
		$(".hint").removeClass("hide")

		


	