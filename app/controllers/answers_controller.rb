class AnswersController < ApplicationController
  def index
  end

  def show
  end

  def destroy
  end

  def new
    @answer = Answer.new
    @question = Question.find(params[:question_id])
    @article = Article.find(params[:article_id])
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.update(question: Question.find(params[:question_id]))

    # @question.article = Article.find(params[:article_id])
    if @answer.save!
      redirect_to about_path
    else
      render :new
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:content)
  end
end
