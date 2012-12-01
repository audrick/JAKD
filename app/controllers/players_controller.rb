class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(params[:player])
    if @player.save
      flash[:notice] = "#{@player.name} you have successfully created your account."
      redirect_to player_path(@player)
    else
      flash[:notice] = "Oops! Something went wrong. Please try again!"
      render 'new'
    end
  end

  def show
    @player = Player.find(params[:id])
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    @player.update_attributes(params[:player])
      redirect_to player_path(@player)
  end

  def destroy
    Player.find(params[:id]).destroy
  end

end