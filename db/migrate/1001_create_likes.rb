class CreateLikes < ActiveRecord::Migration[4.2]
def change
  create_table :likes do |f|
    f.integer :user_id
    f.integer :triviagame_id
    f.boolean :liked, default: nil
    end
  end
end