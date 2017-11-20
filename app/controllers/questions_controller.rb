class QuestionsController < ApplicationController
  
  def answer
    if params['query'].upcase == "I AM GOING TO WORK RIGHT NOW!"
      @answer = "Good boy"
    elsif params['query'].last == "?"
      @answer = "Silly question"
    else 
      @answer = "I don't care"
    end
  end

  def ask
    @answer = params['query']
  end
end
