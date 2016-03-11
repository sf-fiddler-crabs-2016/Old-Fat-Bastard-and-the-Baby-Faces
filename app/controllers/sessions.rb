post '/sessions' do
  user = User.find_by(email: params[:email])
  if user.authenticate(params[:password])
    session[:user_id] = user.id
    session[:name] = user.user_name
    redirect '/questions'
  end
end

post '/sessions/:id' do
  session[:user_id] = nil
  session[:name] = nil
  redirect '/'
end