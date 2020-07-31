# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#triviagames
require 'open-uri'
TriviaGame.create(name: "Film")
#likes
#users
#games
#categories
Category.create(name: "Entertainment: Film")
#Questions
#easy
def create_category
  categories.each do |name|
    category = Category.new(name: name)
    category.save
  end
end
#medium
#hard
#rounds
 create_table "questions", force: :cascade do |t|
    t.string "question"
    t.string "difficulty"
    t.string "correct_answer"
    t.string "incorrect_answers"
    t.integer "points"
    t.integer "round_id"
    t.integer "category_id"
    t.integer "game_id"
    t.integer "user_id"
  end
  grades = Hash.new
grades["Dorothy Doe"] = 9