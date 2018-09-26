class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    @games = Game.all
    render json: @games, status: 200  
  end


  def new
    @game = Game.new
  end


  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game

  end

  def update
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end

end
