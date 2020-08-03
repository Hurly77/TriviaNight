require 'open-uri'
require 'json'
class Api

  def self.urls
    urls = [
      "https://opentdb.com/api.php?amount=10&category=9&difficulty=easy&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=10&difficulty=easy&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=11&difficulty=easy&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=12&difficulty=easy&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=13&difficulty=easy&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=14&difficulty=easy&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=15&difficulty=easy&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=16&difficulty=easy&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=17&difficulty=easy&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=18&difficulty=easy&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=19&difficulty=easy&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=20&difficulty=easy&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=21&difficulty=easy&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=22&difficulty=easy&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=23&difficulty=easy&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=9&difficulty=medium&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=10&difficulty=medium&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=11&difficulty=medium&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=12&difficulty=medium&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=13&difficulty=medium&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=14&difficulty=medium&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=15&difficulty=medium&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=16&difficulty=medium&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=17&difficulty=medium&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=18&difficulty=medium&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=19&difficulty=medium&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=20&difficulty=medium&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=21&difficulty=medium&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=22&difficulty=medium&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=23&difficulty=medium&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=9&difficulty=hard&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=10&difficulty=hard&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=11&difficulty=hard&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=12&difficulty=hard&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=13&difficulty=hard&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=14&difficulty=hard&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=15&difficulty=hard&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=16&difficulty=hard&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=17&difficulty=hard&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=18&difficulty=hard&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=19&difficulty=hard&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=20&difficulty=hard&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=21&difficulty=hard&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=22&difficulty=hard&type=multiple",
      "https://opentdb.com/api.php?amount=10&category=23&difficulty=hard&type=multiple"
    ]
  end

  def self.urls_parse
    nest = urls.map {|url| JSON.parse(open(url).read)["results"]}.flatten
    nest.map {|hash| hash.delete("type")} 
    return nest
  end

  def self.create_category
    @data = self.urls_parse
    categories = @data.map {|hash| hash["category"]}.uniq
    categories.each {|name| Category.find_or_create_by(name: name)}
  end

  def self.category_ids
      @data.map do |hash| category = Category.find_by(name: hash["category"])
      hash["category_id"] = category.id 
    end
      @data.each {|hash| hash.delete("category")}
  end

  def self.create_questions
    self.create_category
    self.category_ids
    @data.each {|hash| Question.create(hash)}
  end
end