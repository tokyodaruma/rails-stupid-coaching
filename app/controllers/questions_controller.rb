# frozen_string_literal: true

# commenting to get rid of rubocop
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @coach_answer = if @question == 'I am going to work'
                      'Great!'
                    elsif @question.end_with?('?')
                      'Silly question, get dressed and go to work!'
                    else
                      "I don't care, get dressed and go to work!"
                    end
  end
end
