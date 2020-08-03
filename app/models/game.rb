class Game < ApplicationRecord
  has_many :rounds
  has_many :questions, through: :rounds
  belongs_to :user
  belongs_to :category

end