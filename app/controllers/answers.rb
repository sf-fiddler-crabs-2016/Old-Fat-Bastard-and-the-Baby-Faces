get '/answers/new' do
  erb :'answers/new'
end

post 'questions/:question_id/answers' do
	@this_question = Question.find(params[:question_id])
	@this_question.answers.create(body: params[:body])
end

get '/answers/:id' do
  @answers = Answer.find(params[:id])
  erb :'answers/show'
end


# get '/questions/:question_id/answers/new' do
#   erb :'answers/new'
# end

# post '/questions/:question_id/answers/' do
#   erb :'answers/new'
# end
