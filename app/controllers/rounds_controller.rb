class RoundsController < ApplicationController
  before_action :current_game
  def new
    @game = current_game
    @q = Question.randon_from_category(@game.category_id, @game.difficulty)
    @round = Round.new
  end

  def create
    @round = Round.create(round_params)
    @round.save
    redirect_to edit_game_round_path(@game.id, @round.id)
  end

  def show
  end

  def edit
    @game = current_game
    @round = Round.find_by(id: params[:id])
    @q = Question.find_by(id: @round.question_id)
  end

  def update
    @rounds = Round.all
    @round = Round.find_by(id: params[:id])
    @round.update(round_params)
    flash[:msg] = @round.correct?(params[:user_answer])
    render :show
  end

  def destroy
    current_user.questions.delete_all
    @rounds = Round.all
    @rounds.delete_all
    redirect_to root_path
  end

  private

  def round_params
    params.require(:round).permit(:game_id, :user_id, :question_id, :user_answer)
  end
end
