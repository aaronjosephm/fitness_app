class QuestionsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @question = Question.new
    @article = Article.find(params[:article_id])
  end

  def create
    @question = Question.new(question_params)
    @question.article = Article.find(params[:article_id])
    @article = @question.article
    if @question.save
      redirect_to blog_path
    else
      render :new
    end
  end

  def destroy
  end
end
