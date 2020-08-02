class Game < ApplicationRecord
  has_many :rounds
  has_many :questions, through: :rounds
  belongs_to :user
  belongs_to :category

  def self.category_id(id)
    Game.find_by(id: id).category_id
  end
  
end