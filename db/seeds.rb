10.times {User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user_name: Faker::Internet.user_name, email: Faker::Internet.email, password: 'test1234')}
30.times {Question.create(title: Faker::Hipster.sentence, body: Faker::Hipster.paragraph, user_id: rand(1..10))}
20.times {Answer.create(body: Faker::Hipster.sentence, question_id: rand(1..30), user_id: rand(1..10))}


20.times {Comment.create(body: Faker::Hipster.sentence, commentable_id: rand(1..30), commentable_type: 'Question', user_id: rand(1..10))}
20.times {Comment.create(body: Faker::Hipster.sentence, commentable_id: rand(1..20), commentable_type: 'Answer', user_id: rand(1..10))}