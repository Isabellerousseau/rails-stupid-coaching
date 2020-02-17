# frozen_string_literal: true

class QuestionsController < ApplicationController
  ANSWERS = {
    1 => 'Great!',
    2 => 'Silly question, get dressed and go to work!',
    3 => "I don't care, get dressed and go to work!"
  }.freeze

  def ask; end

  def answer
    if params[:question].include?('?')
      @answer = ANSWERS[2]
    elsif params[:question] == 'I am going to work'
      @answer = ANSWERS[1]
    else
      @answer = ANSWERS[3]
    end
  end
end
