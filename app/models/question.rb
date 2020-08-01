class Question < ApplicationRecord
  has_many :rounds
  has_many :users, through: :rounds
  belongs_to :game, optional: true
  belongs_to :category
  
  def self.randon_from_category()
    q = where(category_id: category).order("RANDOM()").first
    current_user.
  end
end
  