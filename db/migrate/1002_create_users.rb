class CreateUsers < ActiveRecord::Migration[4.2]
def change
  create_table :users do |f|
    f.string :name
    f.string :password_digest
    f.integer :points
    end
  end
end