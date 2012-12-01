class SessionController < ApplicationController
  def new
  end

  def create
    player = Player.find_by_name(params[:name])
    if player && player.authenticate(params[:password])
      session[:user_id] = player.id
      redirect_to player_path(player)
    else
      flash[:notice] = "Oops. Please check your signin or password and try again."
      render :new
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to signin_path
  end
end
