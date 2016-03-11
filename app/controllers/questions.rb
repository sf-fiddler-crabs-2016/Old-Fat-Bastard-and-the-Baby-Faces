# Display all the questions exist in the database
get '/questions' do
  @questions = Question.all
  erb :index
end

# Get to create question form
get '/questions/new' do
  erb :'/questions/new'
end

# Create a question
post '/questions' do
  @user = User.find(session[:user_id])
  @user.questions.create(params[:question])
  redirect '/'
end

# Get to particular question
get '/questions/:question_id' do
  @question = Question.find(params[:question_id])
  @answers = @question.answers
  erb :'/questions/show'
end

# Get to edit question form
get '/questions/:question_id/edit' do
  erb :'/questions/edit'
end

# Edit question form
put '/questions/:question_id' do
  @question = Question.find(params[:question_id])
  @question.assign_attributes(params[:question])
  redirect '/questions'
end

delete '/questions/:question_id' do
  @question = Question.find(params[:question_id])
  @question.destroy
  redirect '/questions'
end




