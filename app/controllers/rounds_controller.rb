class RoundsController < ApplicationController 

  def create
  	round = Round.create(deck_id: params[:format])
  	redirect_to new_round_guess_path(round.id)
  end

end