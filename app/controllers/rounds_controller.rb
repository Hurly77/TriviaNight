class RoundsController < ApplicationController
  def new
    binding.pry
    @game = Game.find_by(id: params[:game_id])
    @game.questions << Question.all
    @round = Round.new
  end

  def create
    
  end

  def show
    
  end

  def destroy
  end
end
