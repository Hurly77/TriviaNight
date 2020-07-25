class Game < ApplicationRecord
  has_many :rounds
  has_many :questions
  belongs_to :user
  belongs_to :category
  belongs_to :trivia_game
end