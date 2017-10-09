class CardsController < ApplicationController

  def show
    p session[:user_id]
    p session[:game_id]
    @deck = Deck.find(params[:deck_id])
    @card = Card.find(params[:id])
    @guess = Guess.find_by(game_id: session[:game_id], card_id: @card.id)
  end
end
