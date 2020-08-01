class CreateGames < ActiveRecord::Migration[4.2]
def change
  create_table :games do |t|
    t.belongs_to :user
    t.belongs_to :category
    end
  end
end