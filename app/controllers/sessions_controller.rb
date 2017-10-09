class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_username(params[:login][:username])
    p params
    if @user && @user.authenticate(params[:login][:password])
      session[:user_id] = @user.id
      redirect_to '/decks'
    else
      @errors = ["Invalid username or password"]
      render 'sessions/new'
    end
  end

  def destroy
    session.delete(:user_id)
    session.delete(:game_id)
    redirect_to '/decks'
  end

  # Unnecessary I guess
  # private

  # def login_params
  #   params.require(:login).permit(:username, :password)
  # end
end
