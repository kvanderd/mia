class GuessesController < ApplicationController

	def new
    round = session[:round_id]
		@guess = Guess.new(round_id:round, card_id: nil)
		@round = Round.find(round)
    deck = Deck.find(@round.deck_id)
    # you could change this to not use the gon.
    gon.shuffled_deck = deck.cards.map { |card| card.id }.shuffle
	end

  def get_card
    @card = Card.find(params[:card_id])

    respond_to do |format|
      format.json { render :json => @card }
    end
  end

  def create 

    @card = Card.find(params[:card_id])
  	@guess = Guess.create!(correct: @card.is_correct?(params[:guess]), card_id: @card.id, round_id: session[:round_id])
    @response = @card.response(@guess.correct)

    respond_to do |format|
      format.json { render json: @response.to_json }  
    end
  end

end
