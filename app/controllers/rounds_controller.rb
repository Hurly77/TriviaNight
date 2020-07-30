class RoundsController < ApplicationController
  def new
    @game = Game.find_by(id: params[:game_id])
    @game.questions << Question.all
    @round = Round.new
  end

  def create
  end

  def destroy
  end
end
