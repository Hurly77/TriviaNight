class Round < ApplicationRecord
  belongs_to :game
  belongs_to :user
  belongs_to :question

    def correct?(question)
      @q = Question.find_by(id: self.question_id)
      if @q.correct_answer == self.question
        current_user.points + @q.points
      "Yes That is correct, you earned #{@q.points}"
      else
     "Sorry, that was wrong, the correct answer is #{@q.correct_answer}"
    end
  end
end