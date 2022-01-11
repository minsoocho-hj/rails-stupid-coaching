class AnswerController < ApplicationController
  def answer
    @answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    search = params[:question]
    if search.present?
      if search == "I am going to work"
        @answers[0]
      elsif search.end_with?("?")
        @answers[1]
      else
        @answers[2]
      end
    end
  end
end
