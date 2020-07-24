class CreateRounds < ActiveRecord::Migration[4.2]
	def change
    create_table :rounds do |f|
      f.integer :user_id
      f.integer :question_id
      f.integer :game_id
    end
  end
end