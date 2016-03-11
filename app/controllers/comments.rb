get '/comments/new' do
  erb :'comments/new'
end

get '/comments/:id' do
  @comments = Comment.find(params[:id])
  erb :'comments/show'
end

post 'questions/:question_id/comments' do
	@this_question = Question.find(params[:question_id])
	@this_question.comments.create(body: params[:body], commentable_id: params[:question_id], commentable_type: 'Question', user_id: session[:user_id] )
end


post 'answers/:answer_id/comments' do
	@this_answer = Answer.find(params[:answer_id])
	@this_answer.comments.create(body: params[:body], commentable_id: params[:answer_id], commentable_type: 'Answer', user_id: session[:user_id] )
end