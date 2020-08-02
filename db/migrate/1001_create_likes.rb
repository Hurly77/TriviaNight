class CreateLikes < ActiveRecord::Migration[4.2]
def change
  create_table :likes do |t|
    t.integer :user_id
    t.integer :category_id
    t.boolean :liked, default: nil
    end
  end
end