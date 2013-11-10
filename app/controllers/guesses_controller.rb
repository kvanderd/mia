class GuessesController < ApplicationController

  def new
  	#from the round you have access to the deck and all the cards.
  	@round = Round.create(deck_id: params[:deck_id])
  	@guess = Guess.new()
  end


  def create

  end

end