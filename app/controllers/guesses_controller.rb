class GuessesController < ApplicationController

  # Probably unncessary:
  # def new
  # end

  def create
    @guess = Guess.new
  end

  def update
    @game = Game.find(params[:game_id])
    @guess = Guess.find(params[:id])
    @guess.increment!(:guess_count, by = 1)
    if @guess.correct?
      @guess.completed = true
      redirect_to "/decks/#{@game.deck.id}/cards/#{(@guess.card.id + 1)}"
    else

    end
  end
end
