class CreateCategories < ActiveRecord::Migration[4.2]
def change
  create_table :categories do |t|
   t.string :name
    end
  end
end