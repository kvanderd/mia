class DecksController < ApplicationController 

	def	index
		@decks = Deck.where(grade_id: params[:grade_id])
	end


end