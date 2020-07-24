class TriviaGame < ApplicationRecord
  has_many :games
  has_many :categories
  has_many :rounds
  has_many :questions
  has_many :likes
  has_many :users, through: :likes
end