class CreateQuestions < ActiveRecord::Migration[4.2]
def change
  create_table :questions do |t|
    t.string :question
    t.string :difficulty
    t.string :correct_answer
    t.string :incorrect_answers
    t.integer :points, default: 20
    t.integer :category_id
    t.integer :game, default: 0, null: false
    end 
  end
end