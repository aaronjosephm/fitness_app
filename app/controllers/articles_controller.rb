class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @article = Article.all.first
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
  end

  def new
  end

  def create
  end
end
