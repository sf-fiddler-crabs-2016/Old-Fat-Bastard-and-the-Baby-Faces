# go to new comment form
get '/comments/new' do
  erb :'/comments/new'
end

get '/comments/:id' do
  @comments = Comment.find(params[:id])
  erb :'/comments/show'
end

# create a comment for a question
post '/questions/:question_id/comments' do
	@this_question = Question.find(params[:question_id])
	@this_question.comments.create(body: params[:body], user_id: session[:user_id] )
	# Does active record know commentable_type: 'Question' and commentable_id: params[:question_id]?
  redirect "/questions/#{params[:question_id]}"
end

# create a comment for a answer
post '/questions/:question_id/answers/:answer_id/comments' do
	@this_answer = Answer.find(params[:answer_id])
	@this_answer.comments.create(body: params[:body], user_id: session[:user_id] )
	# same as above commentable_id: params[:answer_id], commentable_type: 'Answer'
  redirect "/questions/#{params[:question_id]}"
end
