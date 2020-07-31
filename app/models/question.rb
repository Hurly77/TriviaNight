class Question < ApplicationRecord
  belongs_to :round, optional: true
  belongs_to :category
  belongs_to :game, optional: true
  belongs_to :user, optional: true
end