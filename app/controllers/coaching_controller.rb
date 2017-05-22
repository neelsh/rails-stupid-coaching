class CoachingController < ApplicationController
  def answer
    @query = params[:user_question]
    @answer = coach_answer(@query)
  end

  def ask

  end
end

def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message == "I am going to work right now!"
    return ""
  elsif your_message.include? "?"
    return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"
  end
end

# def coach_answer_enhanced(your_message)

#   if your_message == "I am going to work right now!".upcase
#     return ""
#   elsif your_message == your_message.upcase
#     answer = coach_answer(your_message)
#     return "I can feel your motivation! #{answer}"
#   else
#     return coach_answer(your_message)
#   end
# end
