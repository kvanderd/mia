class GuessesController < ApplicationController

  def new
  	@round = Round.find(params[:round_id])
  	@card = @round.deck.serve_card(@round.deck)
  	@operator = @round.deck.generate_deck_operator(@round.deck)
  	@guess = Guess.new()
  end


  def create
  	#evaluate if the answer is correct or not
  	Guess.create(answer: params[:guess][:answer], round_id: params[:round_id])
  	redirect_to new_round_guess_path(params[:round_id])
  end

end

