class CreateGames < ActiveRecord::Migration[4.2]
def change
  create_table :games do |f|
    f.integer :user_id
    f.integer :subject_id
    end
  end
end