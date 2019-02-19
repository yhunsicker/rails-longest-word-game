require "open-uri"

class GamesController < ApplicationController
  def new
    @letters = 10.times.map { ("a".."z").to_a.sample.upcase }
  end

  def score
    @answer = param[:answer]
    url = "https://wagon-dictionary.herokuapp.com/autocomplete/#{answer}"
  end
end
