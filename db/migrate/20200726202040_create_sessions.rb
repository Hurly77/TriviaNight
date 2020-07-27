class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.string :session_id, null: false
      t.text :data
    end
    add_index :sessions, :session_id, unique: true
    add_index :sessions, :update_at
  end
end
