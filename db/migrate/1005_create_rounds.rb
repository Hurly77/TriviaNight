class CreateRounds < ActiveRecord::Migration[4.2]
	def change
    create_table :rounds do |t|
      t.integer :user_id
      t.integer :question_id
      t.integer :game_id
    end
  end
end