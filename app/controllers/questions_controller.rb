class QuestionsController < ApplicationController
 
  def ask
  	# raise : params -> <ActionController::Parameters {"controller"=>"questions", "action"=>"ask"} permitted: false>
  	# @questions = params[:question]
  	# instance variable will be available in the view
  end

# @questions = QUESTIONS 
# GET /some_path?first_name=alan&last_name=turing#some-facultative-anchor

 def answer
 	# raise
   	@question = params[:question]
   	if @question == "I am going to work"
   		@answer = "Great!"
   	elsif @question.include?("?")
   		@answer = "Silly question, get dressed and go to work!"
   	else 
   		@answer = "I don't care, get dressed and go to work!"
   	end
  end
# you are creating herethe new two instance variables @question and @answer
end

# restaurant[:category] (database) = params[:food_type] (input name form)

# The controller will need to read the question from params and 
# compute an instance variable @answer for the view to display.