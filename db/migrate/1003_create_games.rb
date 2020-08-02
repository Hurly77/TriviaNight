class CreateGames < ActiveRecord::Migration[4.2]
def change
  create_table :games do |t|
    t.integer :user_id
    t.integer :category_id
    t.integer :num_of_rounds, default: 5, null: false
    t.string :difficulty, default: "medium", null: false
    end
  end
end