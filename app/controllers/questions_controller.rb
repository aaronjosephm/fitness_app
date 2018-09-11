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
    @question.title = @question.content
    @question.update(article: Article.find(params[:article_id]))
    # @question.article = Article.find(params[:article_id])
    if @question.save!
      redirect_to new_article_question_path(params[:article_id])
    else
      render :new
    end
  end

  def destroy
  end

  private

  def question_params
    params.require(:question).permit(:content)
  end
end
