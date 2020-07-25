class CreateCategories < ActiveRecord::Migration[4.2]
def change
  create_table :subjects do |t|
   t.string :name
   t.belongs_to :triviagame
    end
  end
end