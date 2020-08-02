class Category < ApplicationRecord
  has_many :games
  has_many :users, through: :games
  has_many :questions
  has_many :likes
end