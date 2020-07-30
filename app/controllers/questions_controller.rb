require 'open-uri'
class QuestionsController < ApplicationController
  
  def request_api
    url = "https://opentdb.com/api.php?amount=50&category=9&difficulty=easy&type=multiple"
    data = JSON.parse(open(url).read)
  end
end
