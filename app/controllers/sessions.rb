post '/sessions' do
        p 'FUCK!'
        p params
  user = User.find_by(email: params[:email])
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:name] = user.full_name
      if request.xhr?
        "true"
        # "true"
      # erb :'/partials/_errors', layout: false
      else
        # redirect '/users'
      end
    # else
    end
  # else
  #   erb :'/partials/_errors', layout: false

end

post '/sessions/:id' do
  session[:user_id] = nil
  session[:name] = nil
  redirect '/'
end