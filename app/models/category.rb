class Category < ApplicationRecord
  has_many :games
  has_mnay :questions
  has_many :users, through: :games
  has_many :rounds, through: :questions
end