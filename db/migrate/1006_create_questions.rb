class CreateQuestions < ActiveRecord::Migration[4.2]
def change
  create_table :questions do |t|
    t.string :question
    t.string :difficulty
    t.string :correct_answer
    t.string :incorrect_answers
    t.integer :points
    t.belongs_to :round
    t.belongs_to :category
    t.belongs_to :game
    t.belongs_to :user
    end 
  end
end