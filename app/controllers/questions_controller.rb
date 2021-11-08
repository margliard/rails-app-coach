class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:questions]
    @answer = params[:action]
    if @questions == 'I am going to work'
      return @answer = 'Great!'
    elsif @questions.include? '?'
      return @answer = 'Silly question, get dressed and go to work!'
    else
      return @answer = "I don't care, get dressed and go to work!"
    end
  end
end
