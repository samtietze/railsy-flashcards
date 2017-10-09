class DecksController < ApplicationController

  def index
    @decks = Deck.all
  end

  def show
    @deck = Deck.find(params[:id])
  end
  # def new
  # end

  # def create
  # end

end
