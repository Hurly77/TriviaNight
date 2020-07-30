class Question < ApplicationRecord
  belongs_to :round
  belongs_to :category
  belongs_to :game
  belongs_to :user

  
end