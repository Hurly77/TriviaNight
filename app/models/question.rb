class Question < ApplicationRecord
  has_many :rounds
  has_many :users, through: :rounds
  has_many :games, through: :rounds
  belongs_to :category

  def self.randon_from_category(category_id, difficulty)
    values = [category_id, difficulty]
    self.where("category_id = ? AND difficulty = ?", *values).order("RANDOM()").first 
  end

  def to_quot
   q = self.question
    q = q.gsub("&quot;",'"')
    q = q.gsub("&#039;", "'")
    q.gsub("&rsquo;", "'")
  end

  def a_to_quot(array)
    array.map do |a|
      a = a.gsub("&quot;",'"')
      a = a.gsub("&#039;", "'")
      a.gsub("&rsquo;", "'")
    end
  end

  def parse_data
    array = JSON.parse(self.incorrect_answers) << self.correct_answer
    array = self.a_to_quot(array)
    array.shuffle
  end
end
  