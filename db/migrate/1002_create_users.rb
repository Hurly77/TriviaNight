class CreateUsers < ActiveRecord::Migration[4.2]
def change
  create_table :users do |t|
    t.string :name
    #Database authenticatable
    t.string :email, null: false, default: ""
    t.string :encrypted_password, null: false, default: ""

    #recoverable
    t.string :reset_password_token
    t.datetime :reset_password_sent_at
    t.integer :points
    t.boolean :admin, default: false
    end
  end
end