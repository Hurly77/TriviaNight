# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_26_202040) do

  create_table "games", force: :cascade do |t|
    t.integer "user_id"
    t.integer "category_id"
    t.integer "trivia_game_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "triviagame_id"
    t.boolean "liked"
  end

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

  create_table "rounds", force: :cascade do |t|
    t.integer "user_id"
    t.integer "question_id"
    t.integer "game_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.index "\"update_at\"", name: "index_sessions_on_update_at"
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.integer "triviagame_id"
  end

  create_table "trivia_games", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.integer "points"
    t.boolean "admin", default: false
    t.string "provider", limit: 50, default: "", null: false
    t.string "uid", limit: 500, default: "", null: false
  end

end
