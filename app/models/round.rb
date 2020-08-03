class Round < ApplicationRecord
  belongs_to :game
  belongs_to :user
  belongs_to :question

    def self.category_id(id)
    Game.find_by(id: id).category_id
  end
  
  def correct?(answer)
      @user = User.find_by(id: self.user_id)
    @q = Question.find_by(id: self.question_id)
    if @q.correct_answer == self.user_answer
      @user.points = @user.points + @q.points
      @user.save
    "Yes that is correct, you earned #{@q.points}"
    else
      @user.points = @user.points - @q.points
      @user.save
   "Sorry, that was wrong, the correct answer is #{@q.correct_answer}, your answer was #{self.user_answer}"
  end
end
end