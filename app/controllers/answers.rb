# Get to create answer form
get '/questions/:question_id/answers/new' do
  erb :'/answers/new'
end

# Create an answer for its question
post '/questions/:question_id/answers' do
  @question = Question.find(params[:question_id]) 
  @question.answers.create(body: params[:body], user_id: session[:user_id])
  erb :"/questions/#{params[:question_id]}"
end


# Edit that particular answers
get '/questions/:question_id/answers/:answer_id/edit' do
  erb :'/answers/edit'
end



# Edit answer for that question form
put '/questions/:question_id/answers/:answer_id/' do
  @question = Question.find(params[:question_id])
  @answer = @question.answers.find(params[:answer_id])
  @answer.assign_attributes(params[:question])

  erb :"/questions/#{params[:question_id]}"
end

delete '/questions/:question_id/answers/:answer_id' do
  @question = Question.find(params[:question_id])
  @answer = @question.answers.find(params[:answer_id])
  @answer.destroy
  erb :"/questions/#{params[:question_id]}"
end


# Get to particular answers
get '/questions/:question_id/answers/:id' do

  #your code here

end
