class CardsController < ApplicationController
  def show
  	puts "I am in the show cards"  *9
  	ap params
  	@card = Card.find(params[:card_id])
  end
end