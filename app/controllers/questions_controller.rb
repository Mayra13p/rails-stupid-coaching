class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]
    @ask = coach_answer(@ask)
  end

  def coach_answer(message)
    if message == 'Im going to work!'
      'Great!'
    elsif message.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
