class QuestionsController < ApplicationController

  # ANSWERS = [
  #   { name: "statement", answer: "I don't care my boy!"},
  #   { name: "question", answer: "Silly question son!"},
  #   { name: "shout", answer: "I feel your motivation!"}
  # ]

  def answer
    # @answers = ANSWERS
    @query = params[:query]
    @answer = coach_answer_enhanced(@query)
  end

  def ask
  end

  private

  def coach_answer(your_message)
    if your_message == "I am going to work right now!"
      return ""
    elsif your_message.include? '?'
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == your_message.upcase
      if your_message == "I am going to work right now!".upcase
        return ""
      else
        return "I can feel your motivation! " + coach_answer(your_message)
      end
    else
      return coach_answer(your_message)
    end
  end

end
