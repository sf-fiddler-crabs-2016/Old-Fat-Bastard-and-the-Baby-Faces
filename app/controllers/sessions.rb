post '/sessions' do
  user = User.find_by(email: params[:email])
  if user.authenticate(params[:password])
    session[:user_id] = user.id
    session[:name] = user.full_name
    if request.xhr?
      "true"
    else
      redirect '/users'
    end
  end
end

post '/sessions/:id' do
  session[:user_id] = nil
  session[:name] = nil
  redirect '/'
end