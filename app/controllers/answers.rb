<<<<<<< HEAD
# Get to create answer form
get '/questions/:question_id/answers/new' do
  @question = Question.find(params[:question_id]) 
  @question.answers.create(body: params[:body], user_id: session[:user_id])
  erb :'answers/new'
end

# Create a question
get '/questions/:question_id/answers' do
  @question = Question.find(params[:question_id]) 
  @question.answers.create(body: params[:body], user_id: session[:user_id])
  erb :"/questions/#{params[:question_id]}"
end

# # Get to particular question
# get '/questions/:question_id' do
#   @question = Question.find(params[:question_id])
#   erb :'questions/show'
# end

# # Get to edit question form
# get '/questions/:question_id/edit' do
#   erb :'/questions/edit'
# end

# # Edit question form
# put '/questions/:question_id' do
#   @question = Question.find(params[:question_id])
#   @question.assign_attributes(params[:question])
#   redirect '/questions'
# end

# delete '/questions/:question_id' do
#   @question = Question.find(params[:question_id])
#   @question.destroy
#   redirect '/questions'

# end