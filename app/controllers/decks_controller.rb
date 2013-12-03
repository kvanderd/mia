class DecksController < ApplicationController 

	def	index
		@decks = Deck.where(grade_id: params[:format])
	end


end