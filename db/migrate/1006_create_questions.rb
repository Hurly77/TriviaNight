class CreateQuestions < ActiveRecord::Migration[4.2]
def change
  create_table :questions do |f|
    f.string :question
    f.string :difficulty
    f.string :correct_answer
    f.string :incorrect_answers
    f.integer :points
    f.belongs_to :round
    f.belongs_to :category
    f.belongs_to :game
    f.belongs_to :user
    end 
  end
end