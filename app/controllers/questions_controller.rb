class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @questions == "I am going to work"
      @answer = "Great"
    elsif @question.end_with?("?")
      @questions = "Silly question, get dressed and go to work!"
    else
      @questions = "I don`t care, get dressd and go to work"
    end
  end
end
