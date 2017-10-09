class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # def game_path(game)
  #   deck_game_path(game.deck, game)
  # end

  # helper_method :deck_game_path

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end
end
