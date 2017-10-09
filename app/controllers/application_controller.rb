class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # def game_path(game)
  #   deck_game_path(game.deck, game)
  # end

  # helper_method :deck_game_path
end
