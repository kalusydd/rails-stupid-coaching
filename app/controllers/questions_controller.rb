class QuestionsController < ApplicationController
  def ask
    # @question = params[:user_input]
  end

  def answer
    @question = params[:user_input]
    @answer =
      if @question == 'I am going to work'
        'Great!'
      elsif @question.match?(/\z?/)
        'Silly question, get dressed and go to work!'
      else
        "I don't care, get dressed and go to work!"
      end
  end
end
