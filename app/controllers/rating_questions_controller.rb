# frozen_string_literal: true

class RatingQuestionsController < ApplicationController
  def index
    @rating_questions = RatingQuestion.all
  end

  def new
    @rating_question = RatingQuestion.new
  end

  def create
    @rating_question = RatingQuestion.new(question_params)
    if @rating_question.save
      flash[:notice] = "Your question has been created."
      render :show, status: 201
    end
  end

  private

    def question_params
      params.require(:rating_question).permit(:title, :tag)
    end
end
