class CreateTriviaGames < ActiveRecord::Migration[4.2]
def change
  create_table :TriviaGame do |f|
    f.string :name
    end
  end
end