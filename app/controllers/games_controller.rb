class GamesController < ApplicationController

  def create
    @game = Game.create(gramas)
    if @game.save
    redirect_to new_game_round_path(@game)
    else 
      redirect_to new_game_path
    end
  end

  def show
  end

  def destroy
  end

  private

  def gramas
    params.require(:game).permit(:user_id, :category_id, :difficulty, :num_of_rounds)
  end
end
