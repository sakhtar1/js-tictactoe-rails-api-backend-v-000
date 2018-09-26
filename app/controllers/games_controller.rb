class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    @games = Game.all
    respond_to do |f|
      f.json {render json: @games, status: 200}
      f.html {render :index}
    end
  end


  def new
    @game = Game.new
  end


  def create
    Game.create(game_params)
    render game_path
  end

  def show
    @game = Game.find(params[:id])
    respond_to do |format|
    format.html { render :show }
    format.json { render json: @game, status: 200}
    end
  end

  def update
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end

end
