class DecksController < ApplicationController

  def index
    @decks = Deck.all
  end

  def show
    @deck = Deck.find(params[:id])
    @game = Game.new(deck_id: @deck.id)
  end
  # def new
  # end

  # def create
  # end

end
