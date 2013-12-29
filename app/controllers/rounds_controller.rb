class RoundsController < ApplicationController 

  def create
  	user = current_user.id if current_user
  	round = Round.create(deck_id: params[:format], user_id: user)
  	session[:round_id] = round.id
	  redirect_to new_rounds_guesses_path(round)
  end

  def show
    round_id = session[:round_id]
  	@round = Round.find(round_id)
  end

end