class CardsController < ApplicationController

  def show
    @deck = Deck.find(params[:deck_id])
    @card = Card.find(params[:id])
    @guess = Guess.find_by(game_id: 1, card_id: @card.id)
  end
end
