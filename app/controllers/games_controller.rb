class GamesController < ApplicationController

  # Maybe unnecessary
  # def new
  # end

  def create
    @deck = Deck.find(params[:deck_id])
    @game = Game.new(deck_id: @deck.id, user_id: session[:user_id])
    # session[:game_id] = @game.id
    redirect_to "/decks/#{@deck.id}/cards/1"
  end

  def show
    @deck = Deck.find(params[:deck_id])
    @game = Game.find(params[:id])
    #stats
  end

  def game_params
    # params.require(:game).permit(:deck_id)
  end
end
