class GamesController < ApplicationController

  # Maybe unnecessary
  # def new
  # end

  def create
    @game = Game.create
    session[:game_id] = @game.id
  end

  def show
    @game = Game.find(params[:id])
  end
end
