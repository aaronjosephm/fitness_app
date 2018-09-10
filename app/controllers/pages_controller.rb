class PagesController < ApplicationController

  def blog
    @article = Article.all.first
    @question = Question.new
  end

  def landing
  end

  def about
  end

  def contact
  end

  def fitness
  end

  def mealplans
  end
end
