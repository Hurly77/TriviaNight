class CreateCategories < ActiveRecord::Migration[4.2]
def change
  create_table :subjects do |f|
   f.string :name
   f.belongs_to :triviagame
    end
  end
end