get '/comments/new' do
  erb :'comments/new'
end

get '/comments/:id' do
  @comments = Comment.find(params[:id])
  erb :'comments/show'
end

