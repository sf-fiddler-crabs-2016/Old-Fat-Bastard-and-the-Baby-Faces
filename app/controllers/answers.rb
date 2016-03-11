get '/answers/new' do
  erb :'answers/new'
end

get '/answers/:id' do
  @answers = Answer.find(params[:id])
  erb :'answers/show'
end

