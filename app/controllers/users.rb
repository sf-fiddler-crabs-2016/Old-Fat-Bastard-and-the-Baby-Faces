get '/users' do
  @users = User.all
  @user = User.find_by(id: session[:user_id])
  @questions = Question.all
  @answers = Answer.all
  @comments = Comment.all
  erb :'users/index'
end

get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.create(first_name: params[:first_name], last_name: params[:last_name], user_name: params[:user_name], email: params[:email], password: params[:password])
  if @user.valid?
    session[:user_id] = @user.id
    session[:name] = @user.full_name
    redirect '/users'
  else
    redirect "/users/new?errors=#{@user.errors.full_messages.join(" and ")}"
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  @user_questions = Question.where(user_id: @user.id)
  @user_answers = Answer.where(user_id: @user.id)
  @user_comments = Comment.where(user_id: @user.id)
  erb :'/users/show'
end

get '/users/:id/edit' do
  # erb :'/users/edit'
end

put '/users/:id' do
end

delete '/users/:id' do
end
