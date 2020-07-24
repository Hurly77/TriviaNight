class User < ApplicationRecord
  has_many :games
  has_many :likes
  has_many :triviagames, through: :likes
  has_many :categories, through: :games
  has_many :questions, through: :games
end