class Round < ApplicationRecord
  belongs_to :game
  belongs_to :triviaGame
  has_one :question
end