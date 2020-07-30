class GamesController < ApplicationController
  def new
  end

  def create
    @game = Game.create(gramas)
    redirect_to new_game_round_path(@game)
  end

  def show
  end

  def destroy
  end

  private

  def gramas
    params.require(:game).permit(:user_id, :category_id, :trivia_game_id)
  end
end
