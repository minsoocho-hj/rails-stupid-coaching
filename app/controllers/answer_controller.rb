class AnswerController < ApplicationController

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  private
  def coach_answer(message)
    if message.present?
      if message == "I am going to work"
        "Great!"
      elsif message.include?("?")
        "Silly question, get dressed and go to work!"
      else
        "I don't care, get dressed and go to work!"
      end
    else
      "type your question"
    end
  end
end
