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
  end
end
