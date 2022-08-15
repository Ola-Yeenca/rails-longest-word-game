class GamesController < ApplicationController

  def new
    charset = Array('A'..'Z')
    @letters = charset.sample(10)
  end

  def score
    @word = params[:words].upcase
    @letter = params[:letters].split
    @included = included?(@word, @letter)
  end

  def included?(word, letters)
    word.chars.all? { |letter| word.count(letter) <= letters.count(letter) }
  end
end
